import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/user_repo.dart';
import '../../bloc/random_user_bloc.dart';
import '../../bloc/random_user_event.dart';
import '../../bloc/random_user_state.dart';
import '../widgets/main_page.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
  final usersRepo = UsersRepo();

  @override
  Widget build(BuildContext context) {
    final RandomUserBloc userBloc = RandomUserBloc(usersRepo);
    return BlocBuilder<RandomUserBloc, RandomUserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state is UserEmtyState) {
            return MainPage(
                nextUser: () {
                  userBloc.add(RandomUserLoadEvent());
                },
                findGeo: () {},
                image:
                    'https://media-exp1.licdn.com/dms/image/C4D03AQEgdIYCbLxK-A/profile-displayphoto-shrink_800_800/0/1634706702301?e=1651104000&v=beta&t=PJJqOIr2_X6J_whiCo_4dD8hBi8zbyadMpeM8flmYMI',
                name: 'Abai Tekimbaev',
                gender: 'man');
          } else if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else if (state is UserLoadedState) {
            return MainPage(
                image:
                    state.loadedUser.results!.first.picture!.large.toString(),
                name: state.loadedUser.results!.first.name!.first.toString(),
                gender: state.loadedUser.results!.first.gender.toString(),
                nextUser: () {
                  userBloc.add(RandomUserLoadEvent());
                },
                findGeo: () {});
          } else {
            return MainPage(
                nextUser: () {
                  userBloc.add(RandomUserLoadEvent());
                },
                findGeo: () {},
                image:
                    'https://media-exp1.licdn.com/dms/image/C4D03AQEgdIYCbLxK-A/profile-displayphoto-shrink_800_800/0/1634706702301?e=1651104000&v=beta&t=PJJqOIr2_X6J_whiCo_4dD8hBi8zbyadMpeM8flmYMI',
                name: 'Abai Tekimbaev',
                gender: 'man');
          }
        });
  }
}
