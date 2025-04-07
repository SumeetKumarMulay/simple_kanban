import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/widgets/kanban_view.dart';

@RoutePage()
class InProgressScreen extends StatefulWidget {
  const InProgressScreen({super.key});

  @override
  State<InProgressScreen> createState() => _InProgressScreenState();
}

class _InProgressScreenState extends State<InProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TodoBloc, TodoStates>(
        builder: (context, state) {
          switch (state) {
            case Initial(:final progressList):
              return KanbanView(
                data: progressList,
                routedFrom: RoutedFrom.inProgressPage,
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
