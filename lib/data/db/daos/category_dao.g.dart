// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dao.dart';

// ignore_for_file: type=lint
mixin _$CategoryDaoMixin on DatabaseAccessor<AppDatabase> {
  $CategoriesTableTable get categoriesTable => attachedDatabase.categoriesTable;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryDaoHash() => r'18f9327b1de0cf114a1d95c297638bab8cb09ffa';

/// See also [categoryDao].
@ProviderFor(categoryDao)
final categoryDaoProvider = AutoDisposeProvider<CategoryDao>.internal(
  categoryDao,
  name: r'categoryDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$categoryDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoryDaoRef = AutoDisposeProviderRef<CategoryDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
