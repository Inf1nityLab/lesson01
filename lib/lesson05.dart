import 'package:book/lesson04.dart';
import 'package:flutter/material.dart';

class Lesson05 extends StatefulWidget {
  const Lesson05({super.key});

  @override
  State<Lesson05> createState() => _Lesson05State();
}

class _Lesson05State extends State<Lesson05> {
  //Примитивные типы данных
  String name = 'Hello';
  int number = 212;
  double weight = 67.78;
  bool rain = true;
  bool sun = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'baias@mail.ru';
  String password = 'test12345';

  void signUp() {
    if (email == emailController.text && password == passwordController.text) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Lesson04(),),);
    } else{
      print('Пароль или логин не правильный');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textField('email', Icons.email, emailController),
              const SizedBox(
                height: 20,
              ),
              textField('password', Icons.lock, passwordController),
              const SizedBox(
                height: 50,
              ),
              button('Sign up', 70, 400, () {signUp();}),
              const SizedBox(
                height: 10,

              ),
              button('Войти как гость', 40, 350, () {})
            ],
          ),
        ),
      ),
    );
  }

  // Функции нужны для того чтобы не писать один и тот же код
  Widget textField(
      String text, IconData iconData, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text,
          prefixIcon: Icon(iconData)),
    );
  }

  Widget button(
      String text, double height, double width, Function() onPressed) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
