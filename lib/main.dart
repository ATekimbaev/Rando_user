import 'package:flutter/material.dart';
import 'package:random_user/ui/colors.dart';
import 'package:random_user/ui/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(backgroundColor: AppColors.mainColor,),
        body:  FirstScreen(),
      ),
    );
  }
}
