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


class _MoveTaskToTodo implements TodoEvents {
  const _MoveTaskToTodo({required this.task, required this.routedFrom});
  

 final  TaskModel task;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveTaskToTodoCopyWith<_MoveTaskToTodo> get copyWith => __$MoveTaskToTodoCopyWithImpl<_MoveTaskToTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveTaskToTodo&&(identical(other.task, task) || other.task == task)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,task,routedFrom);

@override
String toString() {
  return 'TodoEvents.moveTaskToTodo(task: $task, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$MoveTaskToTodoCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$MoveTaskToTodoCopyWith(_MoveTaskToTodo value, $Res Function(_MoveTaskToTodo) _then) = __$MoveTaskToTodoCopyWithImpl;
@useResult
$Res call({
 TaskModel task, RoutedFrom routedFrom
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$MoveTaskToTodoCopyWithImpl<$Res>
    implements _$MoveTaskToTodoCopyWith<$Res> {
  __$MoveTaskToTodoCopyWithImpl(this._self, this._then);

  final _MoveTaskToTodo _self;
  final $Res Function(_MoveTaskToTodo) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,Object? routedFrom = null,}) {
  return _then(_MoveTaskToTodo(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
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
  const _AddInProgressTasks({required this.task, required this.routedFrom});
  

 final  TaskModel task;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddInProgressTasksCopyWith<_AddInProgressTasks> get copyWith => __$AddInProgressTasksCopyWithImpl<_AddInProgressTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddInProgressTasks&&(identical(other.task, task) || other.task == task)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,task,routedFrom);

@override
String toString() {
  return 'TodoEvents.addInProgressTasks(task: $task, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$AddInProgressTasksCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$AddInProgressTasksCopyWith(_AddInProgressTasks value, $Res Function(_AddInProgressTasks) _then) = __$AddInProgressTasksCopyWithImpl;
@useResult
$Res call({
 TaskModel task, RoutedFrom routedFrom
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$AddInProgressTasksCopyWithImpl<$Res>
    implements _$AddInProgressTasksCopyWith<$Res> {
  __$AddInProgressTasksCopyWithImpl(this._self, this._then);

  final _AddInProgressTasks _self;
  final $Res Function(_AddInProgressTasks) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,Object? routedFrom = null,}) {
  return _then(_AddInProgressTasks(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
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


class _AddIsCompleteTasks implements TodoEvents {
  const _AddIsCompleteTasks({required this.task, required this.routedFrom});
  

 final  TaskModel task;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddIsCompleteTasksCopyWith<_AddIsCompleteTasks> get copyWith => __$AddIsCompleteTasksCopyWithImpl<_AddIsCompleteTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddIsCompleteTasks&&(identical(other.task, task) || other.task == task)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,task,routedFrom);

@override
String toString() {
  return 'TodoEvents.addInCompleteTasks(task: $task, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$AddIsCompleteTasksCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$AddIsCompleteTasksCopyWith(_AddIsCompleteTasks value, $Res Function(_AddIsCompleteTasks) _then) = __$AddIsCompleteTasksCopyWithImpl;
@useResult
$Res call({
 TaskModel task, RoutedFrom routedFrom
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$AddIsCompleteTasksCopyWithImpl<$Res>
    implements _$AddIsCompleteTasksCopyWith<$Res> {
  __$AddIsCompleteTasksCopyWithImpl(this._self, this._then);

  final _AddIsCompleteTasks _self;
  final $Res Function(_AddIsCompleteTasks) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,Object? routedFrom = null,}) {
  return _then(_AddIsCompleteTasks(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
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


class _AddTodoTasksToMemory implements TodoEvents {
  const _AddTodoTasksToMemory({required this.task, required this.routedFrom});
  

 final  TaskModel task;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoTasksToMemoryCopyWith<_AddTodoTasksToMemory> get copyWith => __$AddTodoTasksToMemoryCopyWithImpl<_AddTodoTasksToMemory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodoTasksToMemory&&(identical(other.task, task) || other.task == task)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,task,routedFrom);

@override
String toString() {
  return 'TodoEvents.addTodoTasksToMemory(task: $task, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$AddTodoTasksToMemoryCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$AddTodoTasksToMemoryCopyWith(_AddTodoTasksToMemory value, $Res Function(_AddTodoTasksToMemory) _then) = __$AddTodoTasksToMemoryCopyWithImpl;
@useResult
$Res call({
 TaskModel task, RoutedFrom routedFrom
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
@pragma('vm:prefer-inline') $Res call({Object? task = null,Object? routedFrom = null,}) {
  return _then(_AddTodoTasksToMemory(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
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


class _onInitStateCreateTask implements TodoEvents {
  const _onInitStateCreateTask();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onInitStateCreateTask);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.onInitStateCreateTask()';
}


}




/// @nodoc


class _onInitStateEditTask implements TodoEvents {
  const _onInitStateEditTask({required this.task});
  

 final  TaskModel task;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$onInitStateEditTaskCopyWith<_onInitStateEditTask> get copyWith => __$onInitStateEditTaskCopyWithImpl<_onInitStateEditTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onInitStateEditTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TodoEvents.onInitStateEditTask(task: $task)';
}


}

/// @nodoc
abstract mixin class _$onInitStateEditTaskCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$onInitStateEditTaskCopyWith(_onInitStateEditTask value, $Res Function(_onInitStateEditTask) _then) = __$onInitStateEditTaskCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$onInitStateEditTaskCopyWithImpl<$Res>
    implements _$onInitStateEditTaskCopyWith<$Res> {
  __$onInitStateEditTaskCopyWithImpl(this._self, this._then);

  final _onInitStateEditTask _self;
  final $Res Function(_onInitStateEditTask) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_onInitStateEditTask(
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


class _completeEditTask implements TodoEvents {
  const _completeEditTask({required this.task, required this.routedFrom});
  

 final  TaskModel task;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$completeEditTaskCopyWith<_completeEditTask> get copyWith => __$completeEditTaskCopyWithImpl<_completeEditTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _completeEditTask&&(identical(other.task, task) || other.task == task)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,task,routedFrom);

@override
String toString() {
  return 'TodoEvents.completeEditTask(task: $task, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$completeEditTaskCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$completeEditTaskCopyWith(_completeEditTask value, $Res Function(_completeEditTask) _then) = __$completeEditTaskCopyWithImpl;
@useResult
$Res call({
 TaskModel task, RoutedFrom routedFrom
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$completeEditTaskCopyWithImpl<$Res>
    implements _$completeEditTaskCopyWith<$Res> {
  __$completeEditTaskCopyWithImpl(this._self, this._then);

  final _completeEditTask _self;
  final $Res Function(_completeEditTask) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,Object? routedFrom = null,}) {
  return _then(_completeEditTask(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
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


class _onDeleteTask implements TodoEvents {
  const _onDeleteTask({required this.id, required this.routedFrom});
  

 final  String id;
 final  RoutedFrom routedFrom;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$onDeleteTaskCopyWith<_onDeleteTask> get copyWith => __$onDeleteTaskCopyWithImpl<_onDeleteTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onDeleteTask&&(identical(other.id, id) || other.id == id)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode => Object.hash(runtimeType,id,routedFrom);

@override
String toString() {
  return 'TodoEvents.onDeleteTask(id: $id, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$onDeleteTaskCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$onDeleteTaskCopyWith(_onDeleteTask value, $Res Function(_onDeleteTask) _then) = __$onDeleteTaskCopyWithImpl;
@useResult
$Res call({
 String id, RoutedFrom routedFrom
});




}
/// @nodoc
class __$onDeleteTaskCopyWithImpl<$Res>
    implements _$onDeleteTaskCopyWith<$Res> {
  __$onDeleteTaskCopyWithImpl(this._self, this._then);

  final _onDeleteTask _self;
  final $Res Function(_onDeleteTask) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? routedFrom = null,}) {
  return _then(_onDeleteTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,routedFrom: null == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as RoutedFrom,
  ));
}


}

/// @nodoc


class _onTaskCompleted implements TodoEvents {
  const _onTaskCompleted({required this.id});
  

 final  String id;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$onTaskCompletedCopyWith<_onTaskCompleted> get copyWith => __$onTaskCompletedCopyWithImpl<_onTaskCompleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onTaskCompleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvents.onTaskCompleted(id: $id)';
}


}

/// @nodoc
abstract mixin class _$onTaskCompletedCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$onTaskCompletedCopyWith(_onTaskCompleted value, $Res Function(_onTaskCompleted) _then) = __$onTaskCompletedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$onTaskCompletedCopyWithImpl<$Res>
    implements _$onTaskCompletedCopyWith<$Res> {
  __$onTaskCompletedCopyWithImpl(this._self, this._then);

  final _onTaskCompleted _self;
  final $Res Function(_onTaskCompleted) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_onTaskCompleted(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _disposeControllerEvent implements TodoEvents {
  const _disposeControllerEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _disposeControllerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.disposeControllerEvent()';
}


}




/// @nodoc


class _togglePriorityValue implements TodoEvents {
  const _togglePriorityValue({required this.priorityValue, required this.toggledIn});
  

 final  String? priorityValue;
 final  ToggledIn toggledIn;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$togglePriorityValueCopyWith<_togglePriorityValue> get copyWith => __$togglePriorityValueCopyWithImpl<_togglePriorityValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _togglePriorityValue&&(identical(other.priorityValue, priorityValue) || other.priorityValue == priorityValue)&&(identical(other.toggledIn, toggledIn) || other.toggledIn == toggledIn));
}


@override
int get hashCode => Object.hash(runtimeType,priorityValue,toggledIn);

@override
String toString() {
  return 'TodoEvents.togglePriorityValue(priorityValue: $priorityValue, toggledIn: $toggledIn)';
}


}

/// @nodoc
abstract mixin class _$togglePriorityValueCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$togglePriorityValueCopyWith(_togglePriorityValue value, $Res Function(_togglePriorityValue) _then) = __$togglePriorityValueCopyWithImpl;
@useResult
$Res call({
 String? priorityValue, ToggledIn toggledIn
});




}
/// @nodoc
class __$togglePriorityValueCopyWithImpl<$Res>
    implements _$togglePriorityValueCopyWith<$Res> {
  __$togglePriorityValueCopyWithImpl(this._self, this._then);

  final _togglePriorityValue _self;
  final $Res Function(_togglePriorityValue) _then;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priorityValue = freezed,Object? toggledIn = null,}) {
  return _then(_togglePriorityValue(
priorityValue: freezed == priorityValue ? _self.priorityValue : priorityValue // ignore: cast_nullable_to_non_nullable
as String?,toggledIn: null == toggledIn ? _self.toggledIn : toggledIn // ignore: cast_nullable_to_non_nullable
as ToggledIn,
  ));
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
  const Initial({final  List<TaskModel> todoList = const [], final  List<TaskModel> progressList = const [], final  List<TaskModel> completeList = const []}): _todoList = todoList,_progressList = progressList,_completeList = completeList;
  

 final  List<TaskModel> _todoList;
@JsonKey() List<TaskModel> get todoList {
  if (_todoList is EqualUnmodifiableListView) return _todoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todoList);
}

 final  List<TaskModel> _progressList;
@JsonKey() List<TaskModel> get progressList {
  if (_progressList is EqualUnmodifiableListView) return _progressList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_progressList);
}

 final  List<TaskModel> _completeList;
@JsonKey() List<TaskModel> get completeList {
  if (_completeList is EqualUnmodifiableListView) return _completeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completeList);
}


/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialCopyWith<Initial> get copyWith => _$InitialCopyWithImpl<Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial&&const DeepCollectionEquality().equals(other._todoList, _todoList)&&const DeepCollectionEquality().equals(other._progressList, _progressList)&&const DeepCollectionEquality().equals(other._completeList, _completeList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todoList),const DeepCollectionEquality().hash(_progressList),const DeepCollectionEquality().hash(_completeList));

@override
String toString() {
  return 'TodoStates.initial(todoList: $todoList, progressList: $progressList, completeList: $completeList)';
}


}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res> implements $TodoStatesCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) = _$InitialCopyWithImpl;
@useResult
$Res call({
 List<TaskModel> todoList, List<TaskModel> progressList, List<TaskModel> completeList
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
@pragma('vm:prefer-inline') $Res call({Object? todoList = null,Object? progressList = null,Object? completeList = null,}) {
  return _then(Initial(
todoList: null == todoList ? _self._todoList : todoList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,progressList: null == progressList ? _self._progressList : progressList // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,completeList: null == completeList ? _self._completeList : completeList // ignore: cast_nullable_to_non_nullable
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




/// @nodoc


class InitCreateTaskState implements TodoStates {
  const InitCreateTaskState({required this.priorityValue, required final  List<String> priorityList, required this.titleController, required this.bodyController, required this.formKey}): _priorityList = priorityList;
  

 final  String? priorityValue;
 final  List<String> _priorityList;
 List<String> get priorityList {
  if (_priorityList is EqualUnmodifiableListView) return _priorityList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priorityList);
}

 final  TextEditingController titleController;
 final  TextEditingController bodyController;
 final  GlobalKey<FormState> formKey;

/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitCreateTaskStateCopyWith<InitCreateTaskState> get copyWith => _$InitCreateTaskStateCopyWithImpl<InitCreateTaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitCreateTaskState&&(identical(other.priorityValue, priorityValue) || other.priorityValue == priorityValue)&&const DeepCollectionEquality().equals(other._priorityList, _priorityList)&&(identical(other.titleController, titleController) || other.titleController == titleController)&&(identical(other.bodyController, bodyController) || other.bodyController == bodyController)&&(identical(other.formKey, formKey) || other.formKey == formKey));
}


@override
int get hashCode => Object.hash(runtimeType,priorityValue,const DeepCollectionEquality().hash(_priorityList),titleController,bodyController,formKey);

@override
String toString() {
  return 'TodoStates.initCreateTaskState(priorityValue: $priorityValue, priorityList: $priorityList, titleController: $titleController, bodyController: $bodyController, formKey: $formKey)';
}


}

/// @nodoc
abstract mixin class $InitCreateTaskStateCopyWith<$Res> implements $TodoStatesCopyWith<$Res> {
  factory $InitCreateTaskStateCopyWith(InitCreateTaskState value, $Res Function(InitCreateTaskState) _then) = _$InitCreateTaskStateCopyWithImpl;
@useResult
$Res call({
 String? priorityValue, List<String> priorityList, TextEditingController titleController, TextEditingController bodyController, GlobalKey<FormState> formKey
});




}
/// @nodoc
class _$InitCreateTaskStateCopyWithImpl<$Res>
    implements $InitCreateTaskStateCopyWith<$Res> {
  _$InitCreateTaskStateCopyWithImpl(this._self, this._then);

  final InitCreateTaskState _self;
  final $Res Function(InitCreateTaskState) _then;

/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priorityValue = freezed,Object? priorityList = null,Object? titleController = null,Object? bodyController = null,Object? formKey = null,}) {
  return _then(InitCreateTaskState(
priorityValue: freezed == priorityValue ? _self.priorityValue : priorityValue // ignore: cast_nullable_to_non_nullable
as String?,priorityList: null == priorityList ? _self._priorityList : priorityList // ignore: cast_nullable_to_non_nullable
as List<String>,titleController: null == titleController ? _self.titleController : titleController // ignore: cast_nullable_to_non_nullable
as TextEditingController,bodyController: null == bodyController ? _self.bodyController : bodyController // ignore: cast_nullable_to_non_nullable
as TextEditingController,formKey: null == formKey ? _self.formKey : formKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<FormState>,
  ));
}


}

/// @nodoc


class InitEditTaskState implements TodoStates {
  const InitEditTaskState({required this.priorityValue, required final  List<String> priorityList, required this.titleController, required this.bodyController}): _priorityList = priorityList;
  

 final  String? priorityValue;
 final  List<String> _priorityList;
 List<String> get priorityList {
  if (_priorityList is EqualUnmodifiableListView) return _priorityList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priorityList);
}

 final  TextEditingController titleController;
 final  TextEditingController bodyController;

/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitEditTaskStateCopyWith<InitEditTaskState> get copyWith => _$InitEditTaskStateCopyWithImpl<InitEditTaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEditTaskState&&(identical(other.priorityValue, priorityValue) || other.priorityValue == priorityValue)&&const DeepCollectionEquality().equals(other._priorityList, _priorityList)&&(identical(other.titleController, titleController) || other.titleController == titleController)&&(identical(other.bodyController, bodyController) || other.bodyController == bodyController));
}


@override
int get hashCode => Object.hash(runtimeType,priorityValue,const DeepCollectionEquality().hash(_priorityList),titleController,bodyController);

@override
String toString() {
  return 'TodoStates.initEditTaskState(priorityValue: $priorityValue, priorityList: $priorityList, titleController: $titleController, bodyController: $bodyController)';
}


}

/// @nodoc
abstract mixin class $InitEditTaskStateCopyWith<$Res> implements $TodoStatesCopyWith<$Res> {
  factory $InitEditTaskStateCopyWith(InitEditTaskState value, $Res Function(InitEditTaskState) _then) = _$InitEditTaskStateCopyWithImpl;
@useResult
$Res call({
 String? priorityValue, List<String> priorityList, TextEditingController titleController, TextEditingController bodyController
});




}
/// @nodoc
class _$InitEditTaskStateCopyWithImpl<$Res>
    implements $InitEditTaskStateCopyWith<$Res> {
  _$InitEditTaskStateCopyWithImpl(this._self, this._then);

  final InitEditTaskState _self;
  final $Res Function(InitEditTaskState) _then;

/// Create a copy of TodoStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priorityValue = freezed,Object? priorityList = null,Object? titleController = null,Object? bodyController = null,}) {
  return _then(InitEditTaskState(
priorityValue: freezed == priorityValue ? _self.priorityValue : priorityValue // ignore: cast_nullable_to_non_nullable
as String?,priorityList: null == priorityList ? _self._priorityList : priorityList // ignore: cast_nullable_to_non_nullable
as List<String>,titleController: null == titleController ? _self.titleController : titleController // ignore: cast_nullable_to_non_nullable
as TextEditingController,bodyController: null == bodyController ? _self.bodyController : bodyController // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}


}

// dart format on
