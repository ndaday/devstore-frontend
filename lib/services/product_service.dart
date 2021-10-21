import 'dart:convert';
import 'package:devstore/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'http://ikayu.herokuapp.com/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';

    var response = await http.get(Uri.parse(url));

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      data.forEach((e) {
        products.add(ProductModel.fromJson(e));
      });

      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
