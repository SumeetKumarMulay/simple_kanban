import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:simple_kanban/utilities/widgets/custom_drop_down.dart';
import 'package:simple_kanban/utilities/widgets/custom_text_form_field.dart';

final List<String> priorityList = ["low", "medium", "high"];

@RoutePage()
class EditTaskScreen extends StatefulWidget {
  const EditTaskScreen({super.key});

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  String priorityValue = priorityList.first;

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
            controller: _titleController,
            label: 'Do you want to title your task?',
            hint: 'Take your time..',
          ),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "You need to describe the task!";
              }
              return null;
            },
            controller: _bodyController,
            label: 'What would you like to get done?',
            hint: 'Keep it simple..',
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
        onPressed: () {
          /// Handle edit task here
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
