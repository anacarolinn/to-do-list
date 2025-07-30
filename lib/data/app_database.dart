import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:to_do_list/data/tables/category_table.dart';
import 'package:to_do_list/data/tables/project_table.dart';
import 'dart:io';

import 'tables/task_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Tasks, Categories, Projects],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase(file);
  });
}
