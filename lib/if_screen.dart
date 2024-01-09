import 'package:flutter/material.dart';


class IfScreen extends StatefulWidget {
  const IfScreen({super.key});

  @override
  State<IfScreen> createState() => _IfScreenState();
}

class _IfScreenState extends State<IfScreen> {
  //
  // == (равно)
  // != (не равно)
  // > (больше)
  // < (меньше)
  // >= (больше или равно)
  // <= (меньше или равно)

  // && (логическое И)
  // || (логическое ИЛИ)
  // ! (логическое НЕ)
  int a = 5;
  int b = 5;
  int c = 10;
  int d = 10;

  void plus(){
    if (a == b || b == c  ){
      print('They are equal');
    } else {
      print('Hello');
    }
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button('Plus', () => plus()),

            ],
          ),
        ),
      ),
    );
  }
  Widget button(String text, Function() onTap){
    return ElevatedButton(onPressed: onTap, child: Text(text));
  }
}
