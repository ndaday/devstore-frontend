import 'dart:convert';
import 'package:devstore/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

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
