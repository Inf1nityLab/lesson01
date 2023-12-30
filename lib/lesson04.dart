import 'package:flutter/material.dart';

class Lesson04 extends StatefulWidget {
  const Lesson04({super.key});

  @override
  State<Lesson04> createState() => _Lesson04State();
}

class _Lesson04State extends State<Lesson04> {
  int number = 0;

  void numt(){

  }

  void plus(int addNumber) {
    setState(() {
      number += addNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                cursorColor: Colors.white,
                // свет курсора
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                // Свет текста
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    // Заполняет тексфилд
                    border: OutlineInputBorder(
                        // Круглые границы
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding: EdgeInsets.all(20.0),
                    //labelText: 'Email',
                    //labelStyle: TextStyle(color: Colors.black, fontSize: 30)
                    hintText: 'Email',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 30),
                    helperText: 'Email',
                    helperStyle:
                        const TextStyle(color: Colors.black, fontSize: 30),
                    prefixIcon: const Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      size: 30,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              "$number",
              style: const TextStyle(fontSize: 30),
            ),
            Row(
              children: [
                button('PLus 1', () => plus(1)),
                button('Plus 10', () => plus(10)),
                button('Plus 100', () => plus(100)),
              ],
            ),
            container('Hello', 70, 100, Colors.red, Icons.add),
            container('Hi', 80, 300, Colors.blue, Icons.abc_sharp),
            container('Welcome', 40, 250, Colors.green, Icons.ac_unit_sharp),
          ],
        ),
      ),
    );
  }
  Widget container(String greet, double height, double width, Color color, IconData icon ){
    return  Container(
      height: height,
      width: width,
      color: color,
      child:  Row(
        children: [
          Text(greet),
          Icon(icon)
        ],
      ),
    );
  }
  Widget textField(){
    return TextField();
  }

  Widget button(String text, Function() onPressed){
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
