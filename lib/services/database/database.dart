import 'package:localstore/localstore.dart';
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
      await db.collection(_todoCollection).doc(id).set(updateTask.toJson());
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

  Future<void> deleteTaskWithId({required String id}) async {
    try {
      final docTodo = db.collection(_todoCollection).doc(id);
      final docInProgress = db.collection(_inProgressCollection).doc(id);
      final docCompleted = db.collection(_isCompleted).doc(id);

      if ((await docTodo.get()) != null) {
        await docTodo.delete();
        return;
      }

      if ((await docInProgress.get()) != null) {
        await docInProgress.delete();
        return;
      }

      if ((await docCompleted.get()) != null) {
        await docCompleted.delete();
        return;
      }

      throw Exception('Task with id $id not found in any collection.');
    } catch (e) {
      throw Exception('Something went wrong while deleting task: $e');
    }
  }

  Stream<TaskModel> getTodoStream() {
    return db.collection(_todoCollection).stream.map((item) {
      return TaskModel.fromJson(item);
    });
  }
}
