import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/app_database.dart';
import 'package:to_do_list/data/daos/project_dao.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) {
  final projectDao = ref.watch(projectDaoProvider);
  return ProjectRepository(projectDao);
}

class ProjectRepository {
  final ProjectDao projectDao;

  ProjectRepository(this.projectDao);

  Future<List<ProjectsTableData>> getAllProjects() async {
    try {
      final data = await projectDao.getAllProjects();
      return data;
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Stream<List<ProjectsTableData>> watchAllProjects() {
    try {
      return projectDao.watchAllProjects();
    } catch (e, s) {
      throw Stream.error(Exception('Error watch projects: $e\n$s'));
    }
  }

  Future<int> insertProjects(ProjectsTableCompanion project) async {
    try {
      final data = await projectDao.insertProjects(project);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Future<ProjectsTableData?> getProjectsById(int id) async {
    try {
      final data = await projectDao.getProjectsById(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Future<bool> updateProject(ProjectsTableCompanion project) async {
    try {
      final data = await projectDao.updateProject(project);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Future<int> deleteProject(int id) async {
    try {
      final data = await projectDao.deleteProject(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Stream<List<ProjectsTableData>> searchProjects(String query) {
    try {
      return projectDao.searchProjects(query);
    } catch (e, s) {
      throw Stream.error(Exception('Error search projects: $e\n$s'));
    }
  }
}
