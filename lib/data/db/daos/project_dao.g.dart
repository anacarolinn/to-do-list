// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dao.dart';

// ignore_for_file: type=lint
mixin _$ProjectDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProjectsTableTable get projectsTable => attachedDatabase.projectsTable;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDaoHash() => r'201edd3762c9ad07bfe923c55686c971d94b6e0c';

/// See also [projectDao].
@ProviderFor(projectDao)
final projectDaoProvider = AutoDisposeProvider<ProjectDao>.internal(
  projectDao,
  name: r'projectDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$projectDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProjectDaoRef = AutoDisposeProviderRef<ProjectDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
