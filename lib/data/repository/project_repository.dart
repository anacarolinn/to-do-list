import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';
import 'package:to_do_list/data/db/daos/project_dao.dart';
import 'package:to_do_list/domain/models/project_model.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) {
  final projectDao = ref.watch(projectDaoProvider);
  return ProjectRepository(projectDao);
}

class ProjectRepository {
  final ProjectDao projectDao;

  ProjectRepository(this.projectDao);

  Future<List<ProjectModel>> getAllProjects() async {
    try {
      final data = await projectDao.getAllProjects();
      return data.map((e) => ProjectModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching projects: $e\n$s');
    }
  }

  Stream<List<ProjectModel>> watchAllProjects() {
    try {
      return projectDao
          .watchAllProjects()
          .map((data) => data.map((e) => ProjectModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching tasks: $e\\n$s');
      });
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

  Future<ProjectModel?> getProjectsById(int id) async {
    try {
      final data = await projectDao.getProjectsById(id);
      return ProjectModel.fromEntity(data!);
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

  Stream<List<ProjectModel>> searchProjects(String query) {
    try {
      return projectDao
          .searchProjects(query)
          .map((data) => data.map((e) => ProjectModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching tasks: $e\\n$s');
      });
    } catch (e, s) {
      throw Stream.error(Exception('Error search projects: $e\n$s'));
    }
  }
}
