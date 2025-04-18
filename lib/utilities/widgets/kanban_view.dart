import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:simple_kanban/services/router/router.dart';
import 'package:simple_kanban/state/todo_bloc.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/widgets/context_menu.dart';
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
              onLongPressStart: (details) async {
                final RenderBox overlay =
                    Overlay.of(context).context.findRenderObject() as RenderBox;

                final Offset position = details.globalPosition;

                final showEditMenu = ContextMenu(
                  entries: editMenu,
                  position: overlay.globalToLocal(position),
                );

                final selectedValue = await showEditMenu.show(context);
                switch (selectedValue) {
                  case EditMenuAction.moveTaskToTodo:
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.moveTaskToTodo(
                        task: widget.data[index],
                        routedFrom: widget.routedFrom,
                      ),
                    );
                  case EditMenuAction.moveTaskToInProgress:
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.addInProgressTasks(
                        task: widget.data[index],
                        routedFrom: widget.routedFrom,
                      ),
                    );
                  case EditMenuAction.moveTaskToComplete:
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.addInCompleteTasks(
                        task: widget.data[index],
                        routedFrom: widget.routedFrom,
                      ),
                    );
                  case EditMenuAction.deleteTask:
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.onDeleteTask(
                        id: widget.data[index].id!,
                        routedFrom: widget.routedFrom,
                      ),
                    );
                }
              },
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
                  if (value! == true) {
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.addInCompleteTasks(
                        task: widget.data[index],
                        routedFrom: widget.routedFrom,
                      ),
                    );
                  } else {
                    BlocProvider.of<TodoBloc>(context).add(
                      TodoEvents.moveTaskToTodo(
                        task: widget.data[index],
                        routedFrom: widget.routedFrom,
                      ),
                    );
                  }
                },
                onDelete: () {},
              ),
            ),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
