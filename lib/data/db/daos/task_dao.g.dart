// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dao.dart';

// ignore_for_file: type=lint
mixin _$TaskDaoMixin on DatabaseAccessor<AppDatabase> {
  $CategoriesTableTable get categoriesTable => attachedDatabase.categoriesTable;
  $ProjectsTableTable get projectsTable => attachedDatabase.projectsTable;
  $TasksTableTable get tasksTable => attachedDatabase.tasksTable;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskDaoHash() => r'3c7fa20b4163c4be69895519d0fd70b98cd6c50c';

/// See also [taskDao].
@ProviderFor(taskDao)
final taskDaoProvider = AutoDisposeProvider<TaskDao>.internal(
  taskDao,
  name: r'taskDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$taskDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TaskDaoRef = AutoDisposeProviderRef<TaskDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
