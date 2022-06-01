import 'dart:convert';
import 'dart:developer';

import 'package:get_it_test/app/core/error/exception.dart';
import 'package:get_it_test/app/data/models/user_model.dart';
import 'package:http/http.dart' as http;

abstract class UserRemoteServices {
  // https://jsonplaceholder.typicode.com/users/
  Future<List<UserModel>> getAllUsers();

  // https://jsonplaceholder.typicode.com/users/1
  Future<UserModel> getAUser(String id);
}

class UserRemoteServicesImpl implements UserRemoteServices {
  final http.Client client;

  UserRemoteServicesImpl({required this.client});

  @override
  Future<UserModel> getAUser(String id) async {
    final response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/$id'),
        headers: {'Content-Type': 'app;iction/json'});
    if (response.statusCode == 200) {
      final user = json.decode(response.body);
      return UserModel.fromJson(user);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    final response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users/'),
        headers: {'Content-Type': 'app;iction/json'});
    if (response.statusCode == 200) {
      final users = json.decode(response.body);
      List<UserModel> uusers =
          (users as List).map((user) => UserModel.fromJson(user)).toList();
      log('$users');
      return uusers;
      //return (users as List).map((user) => UserModel.fromJson(user)).toList();
    } else {
      throw ServerException();
    }
  }
}
