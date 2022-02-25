import 'package:random_user/api/api_provider.dart';

import '../models/users.dart';

class UsersRepo {
  final UsersProvider _usersProvider = UsersProvider();
  Future<Users> getUsers() => _usersProvider.getUser();
}
