import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/app_database.dart';
import 'package:to_do_list/data/daos/category_dao.dart';

part 'category_repository.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final categoryDao = ref.watch(categoryDaoProvider);
  return CategoryRepository(categoryDao);
}

class CategoryRepository {
  final CategoryDao categoryDao;

  CategoryRepository(this.categoryDao);

  Future<List<CategoriesTableData>> getAllCategories() async {
    try {
      final data = await categoryDao.getAllCategories();
      return data;
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Stream<List<CategoriesTableData>> watchAllCategories() {
    try {
      return categoryDao.watchAllCategories();
    } catch (e, s) {
      throw Stream.error(Exception('Error watch categories: $e\n$s'));
    }
  }

  Future<int> insertCategory(CategoriesTableCompanion category) async {
    try {
      final data = await categoryDao.insertCategory(category);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Future<CategoriesTableData?> getCategoryById(int id) async {
    try {
      final data = await categoryDao.getCategoryById(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Future<bool> updateCategory(CategoriesTableCompanion category) async {
    try {
      final data = await categoryDao.updateCategory(category);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Future<int> deleteCategory(int id) async {
    try {
      final data = await categoryDao.deleteCategory(id);
      return data;
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Stream<List<CategoriesTableData>> searchCategories(String query) {
    try {
      return categoryDao.searchCategories(query);
    } catch (e, s) {
      throw Stream.error(Exception('Error search categories: $e\n$s'));
    }
  }
}
