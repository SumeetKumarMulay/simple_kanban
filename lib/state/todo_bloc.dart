import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_kanban/services/database/database.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';

part 'todo_bloc.freezed.dart';
part 'todo_events.dart';
part 'todo_states.dart';

class TodoBloc extends Bloc<TodoEvents, TodoStates> {
  final Database db;
  TodoBloc({required this.db}) : super(TodoStates.initial()) {
    on<_AddTasks>(_handleAddTasks);
    on<_MoveTaskToTodo>(_handleMoveTaskToTodo);
    on<_AddInProgressTasks>(_handleInProgressTasks);
    on<_AddIsCompleteTasks>(_handleIsCompleteTasks);
    on<_AddTodoTasksToMemory>(_handleTodoTasksToMemory);
    on<_onInitState>(_handleInitialState);
    on<_onInitStateCreateTask>(_handleInitStateCreateTask);
    on<_disposeControllerEvent>(_disposeController);
    on<_togglePriorityValue>(_handlePriorityValueToggle);
    on<_onInitStateEditTask>(_handleInitStateEditTask);
    on<_completeEditTask>(_handleEditTask);
    on<_onDeleteTask>(_handleOnDeleteTask);

    /// Handle Database Stream
    db.getTodoStream().listen(
      (tasks) => add(
        TodoEvents.addTodoTasksToMemory(
          task: tasks,
          routedFrom: RoutedFrom.todoPage,
        ),
      ),
    );

    db.getInProgressStream().listen((tasks) {
      add(
        TodoEvents.addTodoTasksToMemory(
          task: tasks,
          routedFrom: RoutedFrom.inProgressPage,
        ),
      );
    });

    db.getCompletedStream().listen((tasks) {
      add(
        TodoEvents.addTodoTasksToMemory(
          task: tasks,
          routedFrom: RoutedFrom.completedPage,
        ),
      );
    });
  }

  List<TaskModel> todoList = [];
  List<TaskModel> progressList = [];
  List<TaskModel> completedList = [];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final List<String> priorityList = ["low", "medium", "high"];
  final formKey = GlobalKey<FormState>();

  String? priorityValue;

  Future<void> _handleAddTasks(_AddTasks event, Emitter emit) async {
    Database db = Database();
    await db.writeTasksToTodo(task: event.task);
    emit(TodoStates.initial(todoList: todoList));
  }

  Future<void> _handleInProgressTasks(
    _AddInProgressTasks event,
    Emitter emit,
  ) async {
    if (event.task.id != null) {
      switch (event.routedFrom) {
        case RoutedFrom.todoPage:
          await db.writeTaskToInProgress(task: event.task);
          await db.deleteTaskWithId(
            id: event.task.id!,
            routedFrom: event.routedFrom,
          );
          todoList = List<TaskModel>.from(todoList)
            ..removeWhere((value) => value.id == event.task.id);
          add(TodoEvents.onInitState());
        case RoutedFrom.inProgressPage:
          add(TodoEvents.onInitState());
        case RoutedFrom.completedPage:
          TaskModel updateTask = TaskModel(
            body: event.task.body,
            priority: event.task.priority,
            title: event.task.title,
            id: event.task.id,
            isCompleted: false,
          );
          await db.writeTaskToInProgress(task: updateTask);
          await db.deleteTaskWithId(
            id: event.task.id!,
            routedFrom: event.routedFrom,
          );
          completedList = List<TaskModel>.from(completedList)
            ..removeWhere((value) => value.id == event.task.id);
          add(TodoEvents.onInitState());
      }
    }
  }

  Future<void> _handleMoveTaskToTodo(
    _MoveTaskToTodo event,
    Emitter emit,
  ) async {
    switch (event.routedFrom) {
      case RoutedFrom.todoPage:
        add(TodoEvents.onInitState());
      case RoutedFrom.inProgressPage:
        await db.writeTasksToTodo(task: event.task);
        await db.deleteTaskWithId(
          id: event.task.id!,
          routedFrom: event.routedFrom,
        );
        progressList = List<TaskModel>.from(progressList)
          ..removeWhere((value) => value.id == event.task.id);
        add(TodoEvents.onInitState());
      case RoutedFrom.completedPage:
        TaskModel updateTask = TaskModel(
          body: event.task.body,
          priority: event.task.priority,
          title: event.task.title,
          id: event.task.id,
          isCompleted: false,
        );
        await db.writeTasksToTodo(task: updateTask);
        await db.deleteTaskWithId(
          id: event.task.id!,
          routedFrom: event.routedFrom,
        );
        completedList = List<TaskModel>.from(completedList)
          ..removeWhere((value) => value.id == event.task.id);
        add(TodoEvents.onInitState());
    }
  }

  Future<void> _handleIsCompleteTasks(
    _AddIsCompleteTasks event,
    Emitter emit,
  ) async {
    switch (event.routedFrom) {
      case RoutedFrom.completedPage:
        add(TodoEvents.onInitState());
      case RoutedFrom.inProgressPage:
        TaskModel updateTask = TaskModel(
          body: event.task.body,
          priority: event.task.priority,
          title: event.task.title,
          id: event.task.id,
          isCompleted: true,
        );
        await db.writeTaskToIsCompleted(task: updateTask);
        await db.deleteTaskWithId(
          id: event.task.id!,
          routedFrom: event.routedFrom,
        );
        progressList = List<TaskModel>.from(progressList)
          ..removeWhere((value) => value.id == event.task.id);
        add(TodoEvents.onInitState());
      case RoutedFrom.todoPage:
        TaskModel updateTask = TaskModel(
          body: event.task.body,
          priority: event.task.priority,
          title: event.task.title,
          id: event.task.id,
          isCompleted: true,
        );
        await db.writeTaskToIsCompleted(task: updateTask);
        await db.deleteTaskWithId(
          id: event.task.id!,
          routedFrom: event.routedFrom,
        );
        todoList = List<TaskModel>.from(todoList)
          ..removeWhere((value) => value.id == event.task.id);
        add(TodoEvents.onInitState());
    }
  }

  /// This function is used the sort tasks based on priority.
  List<TaskModel> _sortList(List<TaskModel> inputList) {
    List<TaskModel> inputListHigh =
        inputList.where((value) => value.priority == Priority.high).toList();
    List<TaskModel> inputListMedium =
        inputList.where((value) => value.priority == Priority.medium).toList();
    List<TaskModel> inputListLow =
        inputList.where((value) => value.priority == Priority.low).toList();
    return [...inputListHigh, ...inputListMedium, ...inputListLow];
  }

  void _handleTodoTasksToMemory(_AddTodoTasksToMemory event, Emitter emit) {
    switch (event.routedFrom) {
      case RoutedFrom.todoPage:
        todoList = [...todoList, event.task];
        todoList = _sortList(todoList);
        add(TodoEvents.onInitState());
      case RoutedFrom.inProgressPage:
        progressList = [...progressList, event.task];
        progressList = _sortList(progressList);
        add(TodoEvents.onInitState());
      case RoutedFrom.completedPage:
        completedList = [...completedList, event.task];
        completedList = _sortList(completedList);
        add(TodoEvents.onInitState());
    }
  }

  void _handlePriorityValueToggle(_togglePriorityValue event, Emitter emit) {
    priorityValue = event.priorityValue;
    switch (event.toggledIn) {
      case ToggledIn.createTaskPage:
        emit(
          TodoStates.initCreateTaskState(
            priorityValue: priorityValue,
            priorityList: priorityList,
            titleController: titleController,
            bodyController: bodyController,
            formKey: formKey,
          ),
        );
      case ToggledIn.editTaskPage:
        emit(
          TodoStates.initEditTaskState(
            priorityValue: priorityValue,
            priorityList: priorityList,
            titleController: titleController,
            bodyController: bodyController,
          ),
        );
    }
  }

  void _handleInitialState(_onInitState event, Emitter emit) {
    emit(
      TodoStates.initial(
        todoList: todoList,
        progressList: progressList,
        completeList: completedList,
      ),
    );
  }

  void _handleInitStateCreateTask(_onInitStateCreateTask event, Emitter emit) {
    priorityValue = priorityList.first;
    emit(
      TodoStates.initCreateTaskState(
        priorityValue: priorityValue,
        priorityList: priorityList,
        titleController: titleController,
        bodyController: bodyController,
        formKey: formKey,
      ),
    );
  }

  void _handleInitStateEditTask(_onInitStateEditTask event, Emitter emit) {
    priorityValue =
        event.task.priority == Priority.high
            ? 'high'
            : event.task.priority == Priority.medium
            ? 'medium'
            : 'low';
    titleController.text = event.task.title ?? '';
    bodyController.text = event.task.body;
    emit(
      TodoStates.initEditTaskState(
        priorityValue: priorityValue,
        priorityList: priorityList,
        titleController: titleController,
        bodyController: bodyController,
      ),
    );
  }

  Future<void> _handleEditTask(_completeEditTask event, Emitter emit) async {
    if (event.task.id != null) {
      await db.saveEditedTask(
        id: event.task.id!,
        routedFrom: event.routedFrom,
        task: event.task,
      );

      /// Update list in memory
      switch (event.routedFrom) {
        case RoutedFrom.todoPage:
          todoList = List<TaskModel>.from(todoList)
            ..removeWhere((value) => value.id == event.task.id);
          add(TodoEvents.onInitState());
        case RoutedFrom.inProgressPage:
          progressList = List<TaskModel>.from(progressList)
            ..removeWhere((value) => value.id == event.task.id);
          add(TodoEvents.onInitState());
        case RoutedFrom.completedPage:
          completedList = List<TaskModel>.from(completedList)
            ..removeWhere((value) => value.id == event.task.id);
          add(TodoEvents.onInitState());
      }
    }
  }

  Future<void> _handleOnDeleteTask(_onDeleteTask event, Emitter emit) async {
    await db.deleteTaskWithId(id: event.id, routedFrom: event.routedFrom);

    /// Update list in memory
    switch (event.routedFrom) {
      case RoutedFrom.todoPage:
        todoList = List<TaskModel>.from(todoList)
          ..removeWhere((value) => value.id == event.id);
        add(TodoEvents.onInitState());
      case RoutedFrom.inProgressPage:
        progressList = List<TaskModel>.from(progressList)
          ..removeWhere((value) => value.id == event.id);
        add(TodoEvents.onInitState());
      case RoutedFrom.completedPage:
        completedList = List<TaskModel>.from(completedList)
          ..removeWhere((value) => value.id == event.id);
        add(TodoEvents.onInitState());
    }
  }

  void _disposeController(_disposeControllerEvent event, Emitter emit) {
    titleController.dispose();
    bodyController.dispose();
  }
}
