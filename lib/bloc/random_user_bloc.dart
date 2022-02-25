import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user/bloc/random_user_event.dart';
import 'package:random_user/bloc/random_user_state.dart';
import 'package:random_user/models/users.dart';
import '../api/user_repo.dart';

class RandomUserBloc extends Bloc<RandomUserEvent, RandomUserState> {
  final UsersRepo usersRepository;

  RandomUserBloc(this.usersRepository) : super(UserEmtyState()) {
    on<RandomUserLoadEvent>(
      (event, emit) async {
        emit(
          UserLoadingState(),
        );
        try {
          final Users loadedUser = await usersRepository.getUsers();
          emit(
            UserLoadedState(loadedUser: loadedUser),
          );
        } catch (e) {
          emit(
            UserErorState(),
          );
        }
      },
    );
  }
}
