import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
          color: Color(0xff3f3d36), fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}

class WhiteTexttWidget extends StatelessWidget {
  const WhiteTexttWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
