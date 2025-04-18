// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskModel {

 String? get title; String? get id; String get body; bool get isCompleted; Priority get priority;
/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskModelCopyWith<TaskModel> get copyWith => _$TaskModelCopyWithImpl<TaskModel>(this as TaskModel, _$identity);

  /// Serializes this TaskModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskModel&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id,body,isCompleted,priority);

@override
String toString() {
  return 'TaskModel(title: $title, id: $id, body: $body, isCompleted: $isCompleted, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $TaskModelCopyWith<$Res>  {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) _then) = _$TaskModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? id, String body, bool isCompleted, Priority priority
});




}
/// @nodoc
class _$TaskModelCopyWithImpl<$Res>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._self, this._then);

  final TaskModel _self;
  final $Res Function(TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? id = freezed,Object? body = null,Object? isCompleted = null,Object? priority = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TaskModel implements TaskModel {
  const _TaskModel({this.title, this.id, required this.body, this.isCompleted = false, required this.priority});
  factory _TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

@override final  String? title;
@override final  String? id;
@override final  String body;
@override@JsonKey() final  bool isCompleted;
@override final  Priority priority;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskModelCopyWith<_TaskModel> get copyWith => __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskModel&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id,body,isCompleted,priority);

@override
String toString() {
  return 'TaskModel(title: $title, id: $id, body: $body, isCompleted: $isCompleted, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(_TaskModel value, $Res Function(_TaskModel) _then) = __$TaskModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? id, String body, bool isCompleted, Priority priority
});




}
/// @nodoc
class __$TaskModelCopyWithImpl<$Res>
    implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(this._self, this._then);

  final _TaskModel _self;
  final $Res Function(_TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? id = freezed,Object? body = null,Object? isCompleted = null,Object? priority = null,}) {
  return _then(_TaskModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,
  ));
}


}

// dart format on
