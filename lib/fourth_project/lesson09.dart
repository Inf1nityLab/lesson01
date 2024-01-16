import 'package:book/fourth_project/data_list_name.dart';
import 'package:flutter/material.dart';

import '../third_project/strings.dart';

class Lesson09 extends StatefulWidget {
  const Lesson09({super.key});

  @override
  State<Lesson09> createState() => _Lesson09State();
}

class _Lesson09State extends State<Lesson09> {
  List<Widget> widgets = const [FirstScreen(), SecondScreen(), ThirdScreen(), ];
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets.elementAt(current_index),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          // Navigate to the selected page
          setState(() {
            current_index = index;
          });
        },
        currentIndex: current_index,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '1 screen'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '2 screen'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '3 screen'),
        ],
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 15,itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 100,
          color: Colors.yellow,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/14.jpeg'),
            ),
            title: Text('$index'),
          ),
        ),
      );
    });
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: namesList.length,itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 100,
          color: Colors.yellow,
          child: ListTile(
            title: Text('${namesList[index]}'),
          ),
        ),
      );
    });
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/14.jpeg', height: 300, width: 300,);
  }
}
