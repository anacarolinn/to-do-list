import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';
import 'package:to_do_list/data/db/daos/category_dao.dart';
import 'package:to_do_list/domain/models/category_model.dart';

part 'category_repository.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final categoryDao = ref.watch(categoryDaoProvider);
  return CategoryRepository(categoryDao);
}

class CategoryRepository {
  final CategoryDao categoryDao;

  CategoryRepository(this.categoryDao);

  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final data = await categoryDao.getAllCategories();
      return data.map((e) => CategoryModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Stream<List<CategoryModel>> watchAllCategories() {
    try {
      return categoryDao
          .watchAllCategories()
          .map((data) => data.map((e) => CategoryModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching categories: $e\n$s');
      });
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

  Future<CategoryModel?> getCategoryById(int id) async {
    try {
      final data = await categoryDao.getCategoryById(id);
      return CategoryModel.fromEntity(data!);
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

  Stream<List<CategoryModel>> searchCategories(String query) {
    try {
      return categoryDao
          .searchCategories(query)
          .map((data) => data.map((e) => CategoryModel.fromEntity(e)).toList())
          .handleError((e, s) {
        throw Exception('Error watching categories: $e\n$s');
      });
    } catch (e, s) {
      throw Stream.error(Exception('Error search categories: $e\n$s'));
    }
  }
}
