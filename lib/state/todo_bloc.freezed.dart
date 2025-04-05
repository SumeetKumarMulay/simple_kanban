// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoEvents {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoEvents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents()';
}


}

/// @nodoc
class $TodoEventsCopyWith<$Res>  {
$TodoEventsCopyWith(TodoEvents _, $Res Function(TodoEvents) __);
}


/// @nodoc


class _AddTasks implements TodoEvents {
  const _AddTasks({required this.task});
  

 final  TaskModel task;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTasksCopyWith<_AddTasks> get copyWith => __$AddTasksCopyWithImpl<_AddTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTasks&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TodoEvents.addTasks(task: $task)';
}


}

/// @nodoc
abstract mixin class _$AddTasksCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$AddTasksCopyWith(_AddTasks value, $Res Function(_AddTasks) _then) = __$AddTasksCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$AddTasksCopyWithImpl<$Res>
    implements _$AddTasksCopyWith<$Res> {
  __$AddTasksCopyWithImpl(this._self, this._then);

  final _AddTasks _self;
  final $Res Function(_AddTasks) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_AddTasks(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskModelCopyWith<$Res> get task {
  
  return $TaskModelCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class _AddInProgressTasks implements TodoEvents {
  const _AddInProgressTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddInProgressTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.addInProgressTasks()';
}


}




/// @nodoc


class _AddIsCompleteTasks implements TodoEvents {
  const _AddIsCompleteTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddIsCompleteTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.addIsCompleteTasks()';
}


}




/// @nodoc


class _AddTodoTasksToMemory implements TodoEvents {
  const _AddTodoTasksToMemory({required this.task});
  

 final  TaskModel task;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoTasksToMemoryCopyWith<_AddTodoTasksToMemory> get copyWith => __$AddTodoTasksToMemoryCopyWithImpl<_AddTodoTasksToMemory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodoTasksToMemory&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TodoEvents.addTodoTasksToMemory(task: $task)';
}


}

/// @nodoc
abstract mixin class _$AddTodoTasksToMemoryCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$AddTodoTasksToMemoryCopyWith(_AddTodoTasksToMemory value, $Res Function(_AddTodoTasksToMemory) _then) = __$AddTodoTasksToMemoryCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$AddTodoTasksToMemoryCopyWithImpl<$Res>
    implements _$AddTodoTasksToMemoryCopyWith<$Res> {
  __$AddTodoTasksToMemoryCopyWithImpl(this._self, this._then);

  final _AddTodoTasksToMemory _self;
  final $Res Function(_AddTodoTasksToMemory) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_AddTodoTasksToMemory(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskModelCopyWith<$Res> get task {
  
  return $TaskModelCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class _onInitState implements TodoEvents {
  const _onInitState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onInitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.onInitState()';
}


}




/// @nodoc
mixin _$TodoStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoStates()';
}


}

/// @nodoc
class $TodoStatesCopyWith<$Res>  {
$TodoStatesCopyWith(TodoStates _, $Res Function(TodoStates) __);
}


/// @nodoc


class Initial implements TodoStates {
  const Initial({final  List<TaskModel> todoList = const []}): _todoList = todoList;
  

 final  List<TaskModel> _todoList;
@JsonKey() List<TaskModel> get todoList {
  if (_todoList is EqualUnmodifiableListView) return _todoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todoList);
}


/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialCopyWith<Initial> get copyWith => _$InitialCopyWithImpl<Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial&&const DeepCollectionEquality().equals(other._todoList, _todoList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todoList));

@override
String toString() {
  return 'TodoStates.initial(todoList: $todoList)';
}


}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res> implements $TodoStatesCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) = _$InitialCopyWithImpl;
@useResult
$Res call({
 List<TaskModel> todoList
});




}
/// @nodoc
class _$InitialCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todoList = null,}) {
  return _then(Initial(
todoList: null == todoList ? _self._todoList : todoList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}


}

/// @nodoc


class Loading implements TodoStates {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoStates.loading()';
}


}




// dart format on
