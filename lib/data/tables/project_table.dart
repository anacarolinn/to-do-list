import 'package:drift/drift.dart';

class Projects extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  TextColumn get name => text()();
  TextColumn get description => text().nullable()();

  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get finalDate => dateTime().nullable()();

  TextColumn get status => text()();
}

enum Status {
  active,
  done,
  canceled,
}

extension StatusX on Status {
  String get asText => toString().split('.').last;
}
