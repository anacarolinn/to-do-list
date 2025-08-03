import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';

part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @Default(0) int id,
    required DateTime createdAt,
    DateTime? updatedAt,
    required String name,
    String? color,
  }) = _CategoryModel;

  factory CategoryModel.fromEntity(CategoriesTableData category) {
    return CategoryModel(
      id: category.id,
      createdAt: category.createdAt,
      updatedAt: category.updatedAt,
      name: category.name,
      color: category.color,
    );
  }
}
