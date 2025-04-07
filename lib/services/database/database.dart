import 'package:localstore/localstore.dart';
import 'package:simple_kanban/utilities/models/enums/enums.dart';
import 'package:simple_kanban/utilities/models/task_model/task_model.dart';

class Database {
  final db = Localstore.instance;

  /// Final Document name
  final String _todoCollection = 'Todo';
  final String _inProgressCollection = 'InProgressCollection';
  final String _isCompleted = 'IsCompleted';

  Future<void> writeTasksToTodo({required TaskModel task}) async {
    final String id = db.collection(_todoCollection).doc().id;
    TaskModel updateTask = TaskModel(
      body: task.body,
      isCompleted: task.isCompleted,
      priority: task.priority,
      title: task.title,
      id: id,
    );
    try {
      await db
          .collection(_todoCollection)
          .doc(updateTask.id)
          .set(updateTask.toJson());
    } catch (e) {
      throw Exception(
        'Something went wrong while writing $_todoCollection: $e',
      );
    }
  }

  Future<void> writeTaskToInProgress({required TaskModel task}) async {
    if (task.id != null) {
      try {
        await db
            .collection(_inProgressCollection)
            .doc(task.id)
            .set(task.toJson());
      } catch (e) {
        throw Exception(
          'Something went wrong while writing to $_inProgressCollection: $e',
        );
      }
    } else {
      throw Exception('Id could not be found for the task');
    }
  }

  Future<void> writeTaskToIsCompleted({required TaskModel task}) async {
    if (task.id != null) {
      try {
        await db.collection(_isCompleted).doc(task.id).set(task.toJson());
      } catch (e) {
        throw Exception(
          'Something went wrong while writing to $_isCompleted: $e',
        );
      }
    } else {
      throw Exception('Id could not be found for the task');
    }
  }

  Future<void> saveEditedTask({
    required String id,
    required RoutedFrom routedFrom,
    required TaskModel task,
  }) async {
    switch (routedFrom) {
      case RoutedFrom.todoPage:
        try {
          await db.collection(_todoCollection).doc(id).set(task.toJson());
        } catch (e) {
          throw Exception('Something went wrong when editing task! $e');
        }
      case RoutedFrom.inProgressPage:
        try {
          await db.collection(_inProgressCollection).doc(id).set(task.toJson());
        } catch (e) {
          throw Exception('Something went wrong when editing task! $e');
        }
      case RoutedFrom.completedPage:
        try {
          await db.collection(_isCompleted).doc(id).set(task.toJson());
        } catch (e) {
          throw Exception('Something went wrong when editing task! $e');
        }
    }
  }

  Future<TaskModel?> getTaskWithId({required String id}) async {
    try {
      Map<String, dynamic>? item =
          await db.collection(_todoCollection).doc(id).get();
      item ??= await db.collection(_inProgressCollection).doc(id).get();
      item ??= await db.collection(_isCompleted).doc(id).get();
      if (item != null) {
        return TaskModel.fromJson(item);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Something went wrong while getting data: $e');
    }
  }

  Future<void> deleteTaskWithId({
    required String id,
    required RoutedFrom routedFrom,
  }) async {
    try {
      switch (routedFrom) {
        case RoutedFrom.todoPage:
          await db.collection(_todoCollection).doc(id).delete();
        case RoutedFrom.inProgressPage:
          await db.collection(_inProgressCollection).doc(id).delete();
        case RoutedFrom.completedPage:
          await db.collection(_isCompleted).doc(id).delete();
      }
    } catch (e) {
      throw Exception('Something went wrong while deleting task: $e');
    }
  }

  /// Database Streams
  Stream<TaskModel> getTodoStream() {
    return db.collection(_todoCollection).stream.map((item) {
      return TaskModel.fromJson(item);
    });
  }

  Stream<TaskModel> getInProgressStream() {
    return db.collection(_inProgressCollection).stream.map((item) {
      return TaskModel.fromJson(item);
    });
  }

  Stream<TaskModel> getCompletedStream() {
    return db.collection(_isCompleted).stream.map((item) {
      return TaskModel.fromJson(item);
    });
  }
}
