import 'package:json_annotation/json_annotation.dart';

enum RoutedFrom {
  @JsonKey(name: 'todoPage')
  todoPage('todoPage'),
  @JsonKey(name: 'inProgressPage')
  inProgressPage('inProgressPage'),
  @JsonKey(name: 'completedPage')
  completedPage('completedPage');

  final String value;
  const RoutedFrom(this.value);

  static RoutedFrom fromString(String value) {
    return RoutedFrom.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError('Invalid Priority value: $value'),
    );
  }
}

enum ToggledIn { createTaskPage, editTaskPage }
