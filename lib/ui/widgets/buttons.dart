import 'package:flutter/material.dart';



class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.func,
    required this.icon,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);
  final Function() func;
  final Icon icon;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: func,
        child: icon,
        style: ElevatedButton.styleFrom(
          primary: color,
          side: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
