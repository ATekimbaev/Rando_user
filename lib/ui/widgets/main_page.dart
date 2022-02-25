import 'package:flutter/material.dart';

import 'package:random_user/ui/colors.dart';
import 'package:random_user/ui/widgets/buttons.dart';
import 'package:random_user/ui/widgets/text_widgets.dart';
import 'package:random_user/ui/widgets/toggle_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.image,
    required this.name,
    required this.gender,
    required this.nextUser,
    required this.findGeo,
  }) : super(key: key);

  final String image;
  final String name;
  final String gender;
  final Function() nextUser;
  final Function() findGeo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xff212024),
              radius: 80,
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 75,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(
                  color: AppColors.mainColor,
                  width: 150,
                  height: 50,
                  func: () {},
                  icon: const Icon(Icons.plus_one),
                ),
                Buttons(
                  color: AppColors.mainColor,
                  width: 150,
                  height: 50,
                  func: () {},
                  icon: const Icon(Icons.play_circle_outline_outlined),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const GenderButton(
              text: [
                WhiteTexttWidget(data: 'Man'),
                WhiteTexttWidget(data: 'Both'),
                WhiteTexttWidget(data: 'Whoman'),
              ],
              selected: [true, false, true],
            ),
            const SizedBox(
              height: 30,
            ),
            const WhiteTexttWidget(data: '1 user generated this session'),
            const SizedBox(
              height: 30,
            ),
            Buttons(
              color: Colors.green,
              width: 300,
              height: 65,
              func: nextUser,
              icon: const Icon(Icons.refresh),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(data: 'Lego Mode'),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(data: 'Powered by RandomAPI'),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(data: 'https://randomuser.me'),
            const SizedBox(
              height: 10,
            ),
            const WhiteTexttWidget(data: 'Version 1.0.1')
          ],
        ),
      ),
    );
  }
}
