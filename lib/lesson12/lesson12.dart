import 'package:book/lesson12/body/first_list_view.dart';
import 'package:book/lesson12/body/second_list_view.dart';
import 'package:flutter/material.dart';

class Person {
  // свойства
  // методы или функции
  final String name;
  final int age;
  final int number;

  Person({required this.name, required this.age, required this.number});
}

class StringO {
  void toUpperCase() {}
}

class ContainerOne {
  final Color color;
  final double? width;

  final double? height;

  ContainerOne({required this.color, this.width = 200, this.height});
}

class Instagram {
  final String nickName;
  final String picture;
  final String bigPicture;
  final String liked;
  final String times;

  Instagram(
      {required this.nickName,
      required this.picture,
      required this.bigPicture,
      required this.liked,
      required this.times});
}

class Lesson12 extends StatelessWidget {
  const Lesson12({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children:  [
            First(),
            Second()
          ],
        ),
      ),
    );
  }
}
