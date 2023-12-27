import 'package:flutter/material.dart';

class Lesson03 extends StatefulWidget {
  const Lesson03({super.key});

  @override
  State<Lesson03> createState() => _Lesson03State();
}

class _Lesson03State extends State<Lesson03> {
  // Примитивные типы данных = statefull
  int age = 24;
  double weight = 70.99;
  String name = "BAIASTAN";
  bool martialStatus = false;

  // Method - Функция
  void toLow() {
    setState(() {
      age += 1;
    });
  }

  void minus() {
    setState(() {
      age -= 1;
    });
  }

  void multiple() {
    setState(() {
      age *= 2;
    });
  }

  void noll() {
    setState(() {
      age = 0;
    });
  }

  void lowerCase(){
    setState(() {
      name = name.toLowerCase();
    });
  }

  void upperCase(){
    setState(() {
      name = name.toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Переменные stateless
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$age',
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    toLow();
                  },
                  child: const Text('Upper case')),
              IconButton(
                  onPressed: () {
                    minus();
                  },
                  icon: const Icon(Icons.remove)),
              TextButton(
                  onPressed: () {
                    multiple();
                  },
                  child: const Text('Умножать')),
              GestureDetector(
                onTap: (){
                  noll();
                },
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.deepPurple,
                ),
              ),

            ],
          ),
          Text('${name}'),
          Text('${name}'),
          Text('${name}'),
          Text('$name'),
          ElevatedButton(onPressed: (){lowerCase();}, child: Text('lower case'))
        ],
      ),
    );
  }
}
