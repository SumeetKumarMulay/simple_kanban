import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/widgets/kanban_view.dart';

@RoutePage()
class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TodoBloc, TodoStates>(
        builder: (context, state) {
          switch (state) {
            case Initial(:final completeList):
              return KanbanView(
                data: completeList,
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
    );
  }
}
