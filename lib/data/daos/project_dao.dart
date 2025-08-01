import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/app_database.dart';
import 'package:to_do_list/data/tables/project_table.dart';

part 'project_dao.g.dart';

@riverpod
ProjectDao projectDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ProjectDao(db);
}

@DriftAccessor(tables: [ProjectsTable])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(super.db);

  // retorna todos os projetos
  Future<List<ProjectsTableData>> getAllProjects() {
    return select(projectsTable).get();
  }

  // assisti todos os projetos
  Stream<List<ProjectsTableData>> watchAllProjects() {
    return (select(projectsTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  // insere um novo registro em projetos
  Future<int> insertProjects(ProjectsTableCompanion project) {
    return into(projectsTable).insert(project);
  }

  // busca projetos com base no id
  Future<ProjectsTableData?> getProjectsById(int id) {
    return (select(projectsTable)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  // atualiza um projeto
  Future<bool> updateProject(ProjectsTableCompanion project) {
    return update(projectsTable).replace(project);
  }

  // deleta um projeto
  Future<int> deleteProject(int id) {
    return (delete(projectsTable)..where((t) => t.id.equals(id))).go();
  }

  // busca na tabela de projetos pelo nome ou descricao do projeto
  Stream<List<ProjectsTableData>> searchProjects(String query) {
    final searchTerm = '%${query.toLowerCase()}%';

    return (select(projectsTable)
          ..where(
              (t) => t.name.like(searchTerm) | t.description.like(searchTerm)))
        .watch();
  }
}
