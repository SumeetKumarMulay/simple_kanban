import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/services/router/router.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/widgets/kanban_view.dart';

@RoutePage()
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  void initState() {
    BlocProvider.of<TodoBloc>(context).add(TodoEvents.onInitState());
    super.initState();
  }

  @override
  void dispose() {
    BlocProvider.of<TodoBloc>(context).add(TodoEvents.disposeControllerEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TodoBloc, TodoStates>(
        builder: (context, state) {
          switch (state) {
            case Initial(:final todoList):
              return KanbanView(
                data: todoList,
                routedFrom: RoutedFrom.todoPage,
              );
            case Loading():
              return Center(child: CircularProgressIndicator());
            case _:
              return Center(child: CircularProgressIndicator());
          }
        },
        listener: (context, state) => {},
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.push(CreateTaskRoute());
        },
        label: Text("Add Task"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
