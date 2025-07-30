import 'package:drift/drift.dart';
import 'package:to_do_list/data/app_database.dart';
import 'package:to_do_list/data/tables/category_table.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [CategoriesTable])
class CategoryDao extends DatabaseAccessor<AppDatabase>
    with _$CategoryDaoMixin {
  CategoryDao(super.db);

  // retorna todas as categorias existentes na tabela
  Future<List<CategoriesTableData>> getAllCategories() {
    return select(categoriesTable).get();
  }

  // assistir todas as categorias
  Stream<List<CategoriesTableData>> watchAllCategories() {
    return (select(categoriesTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  // insere um registro na tabela de categoria
  Future<int> insertCategory(CategoriesTableCompanion category) {
    return into(categoriesTable).insert(category);
  }

  // buscando categorias por id
  Future<CategoriesTableData?> getCategoryById(int id) {
    return (select(categoriesTable)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  // atualiza uma category
  Future<bool> updateCategory(CategoriesTableCompanion category) {
    return update(categoriesTable).replace(category);
  }

  // deleta uma categoria
  Future<int> deleteCategory(int id) {
    return (delete(categoriesTable)..where((t) => t.id.equals(id))).go();
  }

  // busca na tabela de categorias pelo nome da categoria
  Stream<List<CategoriesTableData>> searchCategories(String query) {
    final searchTerm = '%${query.toLowerCase()}%';

    return (select(categoriesTable)
          ..where(
            (t) => t.name.like(searchTerm),
          )
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }
}
