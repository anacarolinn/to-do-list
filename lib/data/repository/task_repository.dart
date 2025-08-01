import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';
import 'package:to_do_list/data/db/daos/task_dao.dart';

part 'task_repository.g.dart';

@riverpod
TaskRepository taskRepository(Ref ref) {
  final taskDao = ref.watch(taskDaoProvider);
  return TaskRepository(taskDao);
}

class TaskRepository {
  final TaskDao taskDao;

  TaskRepository(this.taskDao);

  Future<List<TasksTableData>> getAllTasks() async {
    try {
      final data = await taskDao.getAllTasks();
      return data;
    } catch (e, s) {
      throw Exception('Error fetching notes: $e\n$s');
    }
  }

  Stream<List<TasksTableData>> watchAllTasks() {
    try {
      return taskDao.watchAllTasks();
    } catch (e, s) {
      throw Stream.error(Exception('Error watch notes: $e\n$s'));
    }
  }

  Future<int> insertTask(TasksTableCompanion task) async {
    try {
      final data = await taskDao.insertTask(task);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching notes: $e\n$s');
    }
  }

  Future<TasksTableData?> getTaskById(int id) async {
    try {
      final data = await taskDao.getTaskById(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching notes: $e\n$s');
    }
  }

  Future<bool> updateTask(TasksTableCompanion task) async {
    try {
      final data = await taskDao.updateTask(task);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching notes: $e\n$s');
    }
  }

  Future<int> deleteTask(int id) async {
    try {
      final data = await taskDao.deleteTask(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching notes: $e\n$s');
    }
  }

  Stream<List<TasksTableData>> searchTasks(String query) {
    try {
      return taskDao.searchTasks(query);
    } catch (e, s) {
      throw Stream.error(Exception('Error search notes: $e\n$s'));
    }
  }
}
