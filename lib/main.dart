// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_proj_1/page/login.dart';
import 'package:final_proj_1/page/signup.dart';
import 'package:final_proj_1/page/welcom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcom() ,
        '/Login': (context) => const Login (),
          '/signup': (context) => const signup (),
      },
    );
  }
}

