part of 'todo_bloc.dart';

@freezed
class TodoStates with _$TodoStates {
  const factory TodoStates.initial({@Default([]) List<TaskModel> todoList}) = Initial;
  const factory TodoStates.loading() = Loading;
}
