part of 'todo_bloc.dart';

@freezed
class TodoEvents with _$TodoEvents {
  /// This is used to add tasks
  const factory TodoEvents.addTasks({required TaskModel task}) = _AddTasks;
  /// This moves tasks to in progress
  const factory TodoEvents.addInProgressTasks() = _AddInProgressTasks;
  /// This moves  tasks to
  const factory TodoEvents.addIsCompleteTasks() = _AddIsCompleteTasks;
  /// This add tasks from database to memory
  const factory TodoEvents.addTodoTasksToMemory({required TaskModel task}) = _AddTodoTasksToMemory;

  const factory TodoEvents.onInitState() = _onInitState;

}
