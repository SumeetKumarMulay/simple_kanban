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
  const _onInitStateEditTask();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _onInitStateEditTask);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvents.onInitStateEditTask()';
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
  const _togglePriorityValue({required this.priorityValue});
  

 final  String? priorityValue;

/// Create a copy of TodoEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$togglePriorityValueCopyWith<_togglePriorityValue> get copyWith => __$togglePriorityValueCopyWithImpl<_togglePriorityValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _togglePriorityValue&&(identical(other.priorityValue, priorityValue) || other.priorityValue == priorityValue));
}


@override
int get hashCode => Object.hash(runtimeType,priorityValue);

@override
String toString() {
  return 'TodoEvents.togglePriorityValue(priorityValue: $priorityValue)';
}


}

/// @nodoc
abstract mixin class _$togglePriorityValueCopyWith<$Res> implements $TodoEventsCopyWith<$Res> {
  factory _$togglePriorityValueCopyWith(_togglePriorityValue value, $Res Function(_togglePriorityValue) _then) = __$togglePriorityValueCopyWithImpl;
@useResult
$Res call({
 String? priorityValue
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
@pragma('vm:prefer-inline') $Res call({Object? priorityValue = freezed,}) {
  return _then(_togglePriorityValue(
priorityValue: freezed == priorityValue ? _self.priorityValue : priorityValue // ignore: cast_nullable_to_non_nullable
as String?,
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
  const InitEditTaskState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEditTaskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoStates.initEditTaskState()';
}


}




// dart format on
