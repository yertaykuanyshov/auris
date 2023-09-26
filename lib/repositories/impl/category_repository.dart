import 'package:auris/models/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getCategories();

  Future<void> add(Category category);
}
