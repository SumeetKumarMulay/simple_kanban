import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

enum Priority {
  @JsonKey(name: "low")
  low("low"),
  @JsonKey(name: "medium")
  medium("medium"),
  @JsonKey(name: "high")
  high("high");

  final String value;
  const Priority(this.value);

  static Priority fromString(String value) {
    return Priority.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError('Invalid Priority value: $value'),
    );
  }
}

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
   String? title,
   required String body,
   required bool isCompleted,
   required Priority priority,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
