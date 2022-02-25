import 'package:random_user/models/users.dart';

abstract class RandomUserState {}

class UserEmtyState extends RandomUserState {}

class UserLoadingState extends RandomUserState {}

class UserLoadedState extends RandomUserState {
  Users loadedUser;

  UserLoadedState({required this.loadedUser});
}
class UserErorState extends RandomUserState {}