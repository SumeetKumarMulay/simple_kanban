import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/services/router/router.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/widgets/custom_container.dart';

class KanbanView extends StatefulWidget {
  final List<TaskModel> data;
  final RoutedFrom routedFrom;
  const KanbanView({super.key, required this.routedFrom, required this.data});

  @override
  State<KanbanView> createState() => _KanbanViewState();
}

class _KanbanViewState extends State<KanbanView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data.length,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                context.router.push(
                  EditTaskRoute(
                    task: widget.data[index],
                    routedFrom: widget.routedFrom,
                  ),
                );
              },
              child: CustomContainer(
                data: widget.data[index],
                onCheckMark: (value) {
                  
                },
                onDelete: () {
                  setState(() {
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.onDeleteTask(
                        id: widget.data[index].id!,
                        routedFrom: widget.routedFrom,
                      ),
                    );
                    BlocProvider.of<TodoBloc>(
                      context,
                    ).add(TodoEvents.onInitState());
                  });
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
