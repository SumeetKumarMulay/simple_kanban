import 'package:flutter/material.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';

final editMenu = <ContextMenuEntry>[
  MenuHeader(text: 'Status'),
  MenuItem(
    label: 'Todo',
    icon: Icons.add_box,
    value: EditMenuAction.moveTaskToTodo,
  ),
  MenuItem(
    label: 'In Progress',
    icon: Icons.work,
    value: EditMenuAction.moveTaskToInProgress,
  ),
  MenuItem(
    label: 'Completed',
    icon: Icons.check,
    value: EditMenuAction.moveTaskToComplete,
  ),
  MenuHeader(text: ''),
  MenuItem(
    label: 'Deleted',
    icon: Icons.delete,
    value: EditMenuAction.deleteTask,
  ),
];
