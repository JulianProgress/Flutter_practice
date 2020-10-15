import 'package:flutter/material.dart';
import 'package:run_dev_app/constants.dart';
import 'package:run_dev_app/pages/Welcome/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomePage(),
    );
  }
}
