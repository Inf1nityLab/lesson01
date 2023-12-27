
import 'dart:convert';

import 'package:book/lesson03.dart';
import 'package:book/my_screen.dart';
import 'package:book/new_screen.dart';
import 'package:book/our_screen.dart';
import 'package:book/staful_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyScreen(),
    );
  }
}




