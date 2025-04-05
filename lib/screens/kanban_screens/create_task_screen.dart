import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_kanban/utilities/widgets/custom_drop_down.dart';
import 'package:simple_kanban/utilities/widgets/custom_text_form_field.dart';

final List<String> priorityList = ["low", "medium", "high"];

@RoutePage()
class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  String? priorityValue = priorityList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : Colors.white,
      appBar: AppBar(title: Text('Create a task')),
      body: Column(
        children: [
          CustomTextFormField(
            controller: titleController,
            label: 'Do you want to title your task?',
            hint: 'Take your time',
          ),
          CustomTextFormField(
            controller: bodyController,
            label: 'What would you like to get done?',
            hint: 'Keep it simple',
          ),
          CustomDropDown<String>(
            items: priorityList,
            selectedValue: priorityValue,
            onChanged: (value) {
              setState(() {
                value = priorityValue;
              });
            },
            label: 'How important is it?',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.check),
      ),
    );
  }
}
