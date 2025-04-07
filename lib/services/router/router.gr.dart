// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [CompletedScreen]
class CompletedRoute extends PageRouteInfo<void> {
  const CompletedRoute({List<PageRouteInfo>? children})
    : super(CompletedRoute.name, initialChildren: children);

  static const String name = 'CompletedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CompletedScreen();
    },
  );
}

/// generated route for
/// [CreateTaskScreen]
class CreateTaskRoute extends PageRouteInfo<void> {
  const CreateTaskRoute({List<PageRouteInfo>? children})
    : super(CreateTaskRoute.name, initialChildren: children);

  static const String name = 'CreateTaskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateTaskScreen();
    },
  );
}

/// generated route for
/// [EditTaskScreen]
class EditTaskRoute extends PageRouteInfo<EditTaskRouteArgs> {
  EditTaskRoute({
    Key? key,
    required TaskModel task,
    required RoutedFrom routedFrom,
    List<PageRouteInfo>? children,
  }) : super(
         EditTaskRoute.name,
         args: EditTaskRouteArgs(key: key, task: task, routedFrom: routedFrom),
         initialChildren: children,
       );

  static const String name = 'EditTaskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditTaskRouteArgs>();
      return EditTaskScreen(
        key: args.key,
        task: args.task,
        routedFrom: args.routedFrom,
      );
    },
  );
}

class EditTaskRouteArgs {
  const EditTaskRouteArgs({
    this.key,
    required this.task,
    required this.routedFrom,
  });

  final Key? key;

  final TaskModel task;

  final RoutedFrom routedFrom;

  @override
  String toString() {
    return 'EditTaskRouteArgs{key: $key, task: $task, routedFrom: $routedFrom}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [InProgressScreen]
class InProgressRoute extends PageRouteInfo<void> {
  const InProgressRoute({List<PageRouteInfo>? children})
    : super(InProgressRoute.name, initialChildren: children);

  static const String name = 'InProgressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InProgressScreen();
    },
  );
}

/// generated route for
/// [TodoScreen]
class TodoRoute extends PageRouteInfo<void> {
  const TodoRoute({List<PageRouteInfo>? children})
    : super(TodoRoute.name, initialChildren: children);

  static const String name = 'TodoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TodoScreen();
    },
  );
}
