part of 'todo_bloc.dart';

@freezed
class TodoEvents with _$TodoEvents {
  /// This is used to add tasks.
  const factory TodoEvents.addTasks({required TaskModel task}) = _AddTasks;

  /// This moves tasks to in progress
  const factory TodoEvents.addInProgressTasks() = _AddInProgressTasks;

  /// This moves tasks to.
  const factory TodoEvents.addIsCompleteTasks() = _AddIsCompleteTasks;

  /// This add tasks from database to memory.
  const factory TodoEvents.addTodoTasksToMemory({required TaskModel task}) =
      _AddTodoTasksToMemory;

  /// This is the init Event for the todo page.
  const factory TodoEvents.onInitState() = _onInitState;

  /// This is the init Event for create Task Screen.
  const factory TodoEvents.onInitStateCreateTask() = _onInitStateCreateTask;

  /// This is the init event for edit task Screen.
  const factory TodoEvents.onInitStateEditTask() = _onInitStateEditTask;

  /// This is event disposes the controller.
  const factory TodoEvents.disposeControllerEvent() = _disposeControllerEvent;

  /// This event adds the priority value.
  const factory TodoEvents.togglePriorityValue({
    required String? priorityValue,
  }) = _togglePriorityValue;
}
