import 'package:dio/dio.dart';
import 'package:random_user/models/users.dart';

class UsersProvider {
  Future<Users> getUser() async {
    const url = 'https://randomuser.me/api/';
    final response = await Dio().get(url);

    if (response.statusCode == 200) {
      final dynamic userJson = response.data;

      return Users.fromJson(userJson);
    } else {
      throw Exception('Error').toString();
    }
  }
}
