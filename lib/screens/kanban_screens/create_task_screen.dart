import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/widgets/custom_drop_down.dart';
import 'package:simple_kanban/utilities/widgets/custom_text_form_field.dart';

@RoutePage()
class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  void initState() {
    BlocProvider.of<TodoBloc>(context).add(TodoEvents.onInitStateCreateTask());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoStates>(
      builder: (context, state) {
        switch (state) {
          case InitCreateTaskState(
            :final priorityValue,
            :final priorityList,
            :final bodyController,
            :final titleController,
            :final formKey,
          ):
            return Scaffold(
              backgroundColor:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.black
                      : Colors.white,
              appBar: AppBar(
                title: Text('Create a task 🧠'),
                leading: IconButton(
                  onPressed: () {
                    BlocProvider.of<TodoBloc>(
                      context,
                    ).add(TodoEvents.onInitState());
                    context.router.pop();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              body: Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: titleController,
                      label: 'Do you want to title your task?',
                      hint: 'Take your time..',
                    ),
                    CustomTextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "You need to describe the task!";
                        }
                        return null;
                      },
                      controller: bodyController,
                      label: 'What would you like to get done?',
                      hint: 'Keep it simple..',
                    ),
                    CustomDropDown<String>(
                      items: priorityList,
                      selectedValue: priorityValue,
                      onChanged: (value) {
                        BlocProvider.of<TodoBloc>(context).add(
                          TodoEvents.togglePriorityValue(
                            priorityValue: value,
                            toggledIn: ToggledIn.createTaskPage,
                          ),
                        );
                      },
                      label: 'How important is it?',
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    /// Process data here
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.addTasks(
                        task: TaskModel(
                          body: bodyController.text,
                          priority:
                              priorityValue == 'high'
                                  ? Priority.high
                                  : priorityValue == "medium"
                                  ? Priority.medium
                                  : Priority.low,
                          title: titleController.text,
                        ),
                      ),
                    );
                    BlocProvider.of<TodoBloc>(
                      context,
                    ).add(TodoEvents.onInitState());
                    titleController.clear();
                    bodyController.clear();
                    context.router.pop();
                  }
                },
                child: Icon(Icons.check),
              ),
            );
          case Loading():
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          case _:
            return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
      },
      listener: (context, state) => {},
    );
  }
}
