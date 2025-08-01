import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:to_do_list/data/db/daos/category_dao.dart';
import 'package:to_do_list/data/db/daos/project_dao.dart';
import 'package:to_do_list/data/db/daos/task_dao.dart';
import 'package:to_do_list/data/db/tables/category_table.dart';
import 'package:to_do_list/data/db/tables/project_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'tables/task_table.dart';

part 'app_database.g.dart';

// Esse é o DB provider
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();

  ref.onDispose(() {
    db.close();
  });

  return db;
}

// É a classe main do db
@DriftDatabase(
  tables: [TasksTable, CategoriesTable, ProjectsTable],
  daos: [TaskDao, CategoryDao, ProjectDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'to_do_list_app',
    );
  }

  @override
  int get schemaVersion => 1;
}
