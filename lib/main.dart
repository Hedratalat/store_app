import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/home_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'store',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        hintColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: producrHomeScreen(),

    );
  }
}


