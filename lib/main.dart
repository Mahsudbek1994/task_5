import 'package:flutter/material.dart';
import 'pages/home_page/home_page.dart';
import 'pages/signin/signin_page.dart';
import 'pages/signup/signup_page.dart';
import 'pages/splash/splash_page.dart';
import 'pages/username/username_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task_5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SignUpPage.id: (context) => SignUpPage(),
        UsernamePage.id: (context) => UsernamePage(),
        SignInPage.id: (context) => SignInPage(),
        HomePage.id: (context) => HomePage(""),
      },
    );
  }
}