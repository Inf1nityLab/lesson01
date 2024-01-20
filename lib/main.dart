
import 'dart:convert';

import 'package:book/fifth_project/data_map.dart';
import 'package:book/fifth_project/lesson_10_dictionary.dart';
import 'package:book/fourth_project/lesson09.dart';
import 'package:book/if_screen.dart';
import 'package:book/lesson03.dart';
import 'package:book/lesson04.dart';
import 'package:book/lesson05.dart';
import 'package:book/lesson07_list.dart';
import 'package:book/lesson11/lesson_11.dart';
import 'package:book/my_screen.dart';
import 'package:book/new_screen.dart';
import 'package:book/our_screen.dart';
import 'package:book/staful_widget.dart';
import 'package:book/third_project/lesson_08_repaet.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  Lesson11(),
    );
  }
}




