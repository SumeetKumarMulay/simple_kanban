import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_kanban/services/database/database.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';

part 'todo_bloc.freezed.dart';
part 'todo_events.dart';
part 'todo_states.dart';

class TodoBloc extends Bloc<TodoEvents, TodoStates> {
  TodoBloc() : super(TodoStates.initial()) {
    on<_AddTasks>(_handleAddTasks);
    on<_AddInProgressTasks>(_handleInProgressTasks);
    on<_AddIsCompleteTasks>(_handleIsCompleteTasks);
    on<_AddTodoTasksToMemory>(_handleTodoTasksToMemory);
    on<_onInitState>(_handleInitialState);

    Database().getTodoStream().listen((tasks) {
      add(TodoEvents.addTodoTasksToMemory(task: tasks));
    });
  }

  List<TaskModel> todoList = [];

  Future<void> _handleAddTasks(_AddTasks event, Emitter emit) async {
    Database db = Database();
    await db.writeTasksToTodo(task: event.task);
    emit(TodoStates.initial(todoList: todoList));
  }

  void _handleInProgressTasks(_AddInProgressTasks event, Emitter emit) {}

  void _handleIsCompleteTasks(_AddIsCompleteTasks event, Emitter emit) {}

  void _handleTodoTasksToMemory(_AddTodoTasksToMemory event, Emitter emit) {
    todoList = [...todoList, event.task];
    emit(TodoStates.initial(todoList: todoList));
  }

  void _handleInitialState(_onInitState event, Emitter emit) {
    emit(TodoStates.initial(todoList: todoList));
  }
}
