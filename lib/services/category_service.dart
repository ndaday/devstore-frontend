import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/category_model.dart';

class CategoryService {
  String baseUrl = 'https://ikayu.herokuapp.com/api';

  Future<List<CategoryModel>> getCategories() async {
    var url = '$baseUrl/categories';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<CategoryModel> categories = [];

      data.forEach((item) {
        categories.add(CategoryModel.fromJson(item));
      });

      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
