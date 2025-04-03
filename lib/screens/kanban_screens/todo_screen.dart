import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_kanban/services/test_data/load_test_data.dart';
import 'package:simple_kanban/utilities/widgets/kanban_view.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: loadTestData(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return KanbanView(data: snapshot.requireData);
          }
          if (snapshot.hasError) {
            return Center(child: Text('Could not load data!'));
          }
          return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Add Task"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
