import 'package:drift/drift.dart';
import 'package:to_do_list/data/tables/category_table.dart';
import 'package:to_do_list/data/tables/project_table.dart';

class TasksTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  TextColumn get title => text()();
  TextColumn get description => text().nullable()();

  DateTimeColumn get dueDate => dateTime().nullable()();
  TextColumn get dueHour => text().nullable()();
  DateTimeColumn get reminder => dateTime().nullable()();

  TextColumn get status => text()();
  TextColumn get prioridade => text()();

  IntColumn get categoryId => integer().references(CategoriesTable, #id)();
  IntColumn get projectId => integer().references(ProjectsTable, #id)();
}

enum Status {
  todo,
  doing,
  done,
}

extension StatusX on Status {
  String get asText => toString().split('.').last;
}

enum Prioridade {
  baixa,
  media,
  alta,
}

extension PrioridadeX on Prioridade {
  String get asText => toString().split('.').last;
}

// Exemplo de uso do dueHour no codigo:

// classfinal agora = TimeOfDay.now();
// final horaFormatada = "${agora.hour.toString().padLeft(2, '0')}:${agora.minute.toString().padLeft(2, '0')}";

// TasksCompanion(dueHour: Value(horaFormatada));
