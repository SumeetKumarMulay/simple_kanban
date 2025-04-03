import 'package:flutter/material.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/widgets/custom_container.dart';

class KanbanView extends StatelessWidget {
  final List<TaskModel> data;
  const KanbanView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            SizedBox(height: 10),
            CustomContainer(data: data[index]),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
