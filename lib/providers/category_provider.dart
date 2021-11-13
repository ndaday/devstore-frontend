import 'package:devstore/models/category_model.dart';
import 'package:devstore/services/category_service.dart';
import 'package:flutter/cupertino.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  set categories(List<CategoryModel> categories) {
    _categories = categories;
    notifyListeners();
  }

  Future<void> getCategories() async {
    try {
      List<CategoryModel> categories = await CategoryService().getCategories();
      _categories = categories;
    } catch (e) {
      print(e);
    }
  }
}
