part of 'todo_bloc.dart';

@freezed
class TodoStates with _$TodoStates {
  const factory TodoStates.initial({
    @Default([]) List<TaskModel> todoList,
    @Default([]) List<TaskModel> progressList,
    @Default([]) List<TaskModel> completeList,
  }) = Initial;
  const factory TodoStates.loading() = Loading;
  const factory TodoStates.initCreateTaskState({
    required String? priorityValue,
    required List<String> priorityList,
    required TextEditingController titleController,
    required TextEditingController bodyController,
    required GlobalKey<FormState> formKey,
  }) = InitCreateTaskState;
  const factory TodoStates.initEditTaskState({
    required String? priorityValue,
    required List<String> priorityList,
    required TextEditingController titleController,
    required TextEditingController bodyController,
  }) = InitEditTaskState;
}
