import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/widgets/custom_drop_down.dart';
import 'package:simple_kanban/utilities/widgets/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class EditTaskScreen extends StatefulWidget {
  final TaskModel task;
  final RoutedFrom routedFrom;
  const EditTaskScreen({
    super.key,
    required this.task,
    required this.routedFrom,
  });

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  @override
  void initState() {
    BlocProvider.of<TodoBloc>(
      context,
    ).add(TodoEvents.onInitStateEditTask(task: widget.task));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoStates>(
      builder: (context, state) {
        switch (state) {
          case InitEditTaskState(
            :final priorityValue,
            :final priorityList,
            :final titleController,
            :final bodyController,
          ):
            return PopScope(
              onPopInvokedWithResult: (didPop, result) {
                BlocProvider.of<TodoBloc>(
                  context,
                ).add(TodoEvents.onInitState());
                titleController.clear();
                bodyController.clear();
              },
              child: Scaffold(
                backgroundColor:
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.black
                        : Colors.white,
                appBar: AppBar(
                  title: Text('Edit your task ✏'),
                  leading: IconButton(
                    onPressed: () {
                      BlocProvider.of<TodoBloc>(
                        context,
                      ).add(TodoEvents.onInitState());
                      context.router.pop();
                      titleController.clear();
                      bodyController.clear();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
                body: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      SizedBox(
                        width: 90.w,
                        child: CustomTextFormField(
                          controller: titleController,
                          label: 'Do you want to title your task?',
                          hint: 'Take your time..',
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                        child: CustomTextFormField(
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
                      ),
                      SizedBox(
                        width: 90.w,
                        child: CustomDropDown<String>(
                          items: priorityList,
                          selectedValue: priorityValue,
                          onChanged: (value) {
                            BlocProvider.of<TodoBloc>(context).add(
                              TodoEvents.togglePriorityValue(
                                priorityValue: value,
                                toggledIn: ToggledIn.editTaskPage,
                              ),
                            );
                          },
                          label: 'How important is it?',
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    /// Handle edit task here
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.completeEditTask(
                        task: TaskModel(
                          id: widget.task.id,
                          title: titleController.text,
                          body: bodyController.text,
                          priority:
                              priorityValue == 'high'
                                  ? Priority.high
                                  : priorityValue == "medium"
                                  ? Priority.medium
                                  : Priority.low,
                        ),
                        routedFrom: widget.routedFrom,
                      ),
                    );
                    BlocProvider.of<TodoBloc>(
                      context,
                    ).add(TodoEvents.onInitState());
                    titleController.clear();
                    bodyController.clear();
                    context.router.pop();
                  },
                  child: Icon(Icons.check),
                ),
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
