// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  title: json['title'] as String?,
  id: json['id'] as String?,
  body: json['body'] as String,
  isCompleted: json['isCompleted'] as bool? ?? false,
  priority: $enumDecode(_$PriorityEnumMap, json['priority']),
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'body': instance.body,
      'isCompleted': instance.isCompleted,
      'priority': _$PriorityEnumMap[instance.priority]!,
    };

const _$PriorityEnumMap = {
  Priority.low: 'low',
  Priority.medium: 'medium',
  Priority.high: 'high',
};
