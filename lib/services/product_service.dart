import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductService {
  String baseUrl = 'https://ikayu.herokuapp.com/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      data.forEach((item) {
        products.add(ProductModel.fromJson(item));
      });

      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
