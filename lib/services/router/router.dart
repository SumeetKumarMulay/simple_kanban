import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_kanban/screens/home_screen.dart';
import 'package:simple_kanban/screens/kanban_screens/completed_screen.dart';
import 'package:simple_kanban/screens/kanban_screens/create_task_screen.dart';
import 'package:simple_kanban/screens/kanban_screens/edit_task_screen.dart';
import 'package:simple_kanban/screens/kanban_screens/in_progress_screen.dart';
import 'package:simple_kanban/screens/kanban_screens/todo_screen.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      initial: true,
      keepHistory: true,
      children: [
        AutoRoute(page: TodoRoute.page, path: 'todo-page'),
        AutoRoute(page: InProgressRoute.page, path: 'in-progress-page'),
        AutoRoute(page: CompletedRoute.page, path: 'complete-page'),
      ],
    ),
    AutoRoute(page: CreateTaskRoute.page, path: '/create-task-page'),
    AutoRoute(page: EditTaskRoute.page, path: '/edit-task-page'),
  ];
}
