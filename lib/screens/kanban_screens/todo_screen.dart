import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_kanban/utilities/widgets/custom_container.dart';

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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              SizedBox(height: 10),
              CustomContainer(child: Text("this is text")),
              SizedBox(height: 10),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /**
           * We handle add todo here.
           */
          print("this add");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
