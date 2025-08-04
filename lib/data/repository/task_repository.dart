import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';
import 'package:to_do_list/data/db/daos/task_dao.dart';
import 'package:to_do_list/domain/models/task_model.dart';

part 'task_repository.g.dart';

@riverpod
TaskRepository taskRepository(Ref ref) {
  final taskDao = ref.watch(taskDaoProvider);
  return TaskRepository(taskDao);
}

class TaskRepository {
  final TaskDao taskDao;

  TaskRepository(this.taskDao);

  Future<List<TaskModel>> getAllTasks() async {
    try {
      final data = await taskDao.getAllTasks();
      return data.map((e) => TaskModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching tasks: $e\n$s');
    }
  }

  Stream<List<TaskModel>> watchAllTasks() {
    try {
      return taskDao
          .watchAllTasks()
          .map((data) => data.map((e) => TaskModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching tasks: $e\n$s');
      });
    } catch (e, s) {
      throw Stream.error(Exception('Error watch tasks: $e\n$s'));
    }
  }

  Future<int> insertTask(TasksTableCompanion task) async {
    try {
      final data = await taskDao.insertTask(task);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching tasks: $e\n$s');
    }
  }

  Future<TaskModel?> getTaskById(int id) async {
    try {
      final data = await taskDao.getTaskById(id);
      return TaskModel.fromEntity(data!);
    } catch (e, s) {
      throw Exception('Error fetching tasks: $e\n$s');
    }
  }

  Future<bool> updateTask(TasksTableCompanion task) async {
    try {
      final data = await taskDao.updateTask(task);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching tasks: $e\n$s');
    }
  }

  Future<int> deleteTask(int id) async {
    try {
      final data = await taskDao.deleteTask(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching tasks: $e\n$s');
    }
  }

  Stream<List<TaskModel>> searchTasks(String query) {
    try {
      return taskDao
          .searchTasks(query)
          .map((data) => data.map((e) => TaskModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching tasks: $e\n$s');
      });
    } catch (e, s) {
      throw Stream.error(Exception('Error search tasks: $e\n$s'));
    }
  }
}
