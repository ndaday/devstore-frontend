import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class AuthService {
  String baseUrl = 'https://ikayu.herokuapp.com/api';
  var token;
  var _authToken;
  var getToken;

  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Failed to Register');
    }
  }

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    token = jsonDecode(response.body)['data'];
    _authToken = token['access_token'];

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', _authToken);
    getToken = pref.getString('token');

    print(response.body);
    print('token: $getToken');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Failed to Login');
    }
  }

  Future logout() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    getToken = pref.getString('token');
    print(getToken);
    var url = '$baseUrl/logout';
    var headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $getToken'
    };
    var body = jsonEncode({});

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      pref.remove('token');
      return true;
    } else {
      throw Exception('Failed to Logout');
    }
  }
}
