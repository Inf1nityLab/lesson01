
import 'package:book/lesson03.dart';
import 'package:book/lesson04.dart';
import 'package:book/lesson05.dart';
import 'package:book/third_project/functions.dart';
import 'package:book/third_project/strings.dart';
import 'package:flutter/material.dart';

class Lesson08Repeat extends StatelessWidget {
  const Lesson08Repeat({super.key});

  @override
  Widget build(BuildContext context) {

    List<int> number = [1,2,3, 4];
    List<Widget> widgets= const [Lesson03(), Lesson04(), Lesson05(), ];
    return  Scaffold(
      body: ListView.builder(itemCount:  number.length,itemBuilder: (context, index){
        return ListTile(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> widgets[index]));},
          title:  Text('${number[index]}'),
        );
      })
    );
  }
}

// _____________________ index = 0
//onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> widgets[index]));}
//onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> widgets[0]));}
//onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Lesson03()));}
//Text(number[0]) = Text("1")
// _____________________ index = 1
//Text(number[1]) = Text("2")
// _____________________ index = 3
//Text(number[2]) = Text("3")

