import 'package:drift/drift.dart';
import 'package:to_do_list/data/app_database.dart';
import 'package:to_do_list/data/tables/task_table.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [TasksTable])
class TaskDao extends DatabaseAccessor<AppDatabase> with _$TaskDaoMixin {
  TaskDao(super.db);

  // retorna todas as tarefas da tabela de tasks
  Future<List<TasksTableData>> getAllTasks() {
    return select(tasksTable).get();
  }

  // assistir todas as tarefas
  Stream<List<TasksTableData>> watchAllTasks() {
    return (select(tasksTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  // insere um registro na tabela task
  Future<int> insertTask(TasksTableCompanion task) {
    return into(tasksTable).insert(task);
  }

  // buscando tarefas por id
  Future<TasksTableData?> getTaskById(int id) {
    return (select(tasksTable)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  // atualizando uma tarefa
  Future<bool> updateTask(TasksTableCompanion task) {
    return update(tasksTable).replace(task);
  }

  // deletando uma tarefa por ids
  Future<int> deleteTask(int id) {
    return (delete(tasksTable)..where((t) => t.id.equals(id))).go();
  }

  // busca na tabela de tarefas pelo titulo ou descricao
  Stream<List<TasksTableData>> searchTasks(String query) {
    final searchTerm = '%${query.toLowerCase()}%';

    return (select(tasksTable)
          ..where(
            (t) => t.title.like(searchTerm) | t.description.like(searchTerm),
          )
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }
}
