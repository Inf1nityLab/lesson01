import 'package:flutter/material.dart';

Map<String, String> words = {
  "class": "класс",
  "constructor": "конструктор",
  "function": "функция",
  "library": "библиотека",
  "method": "метод",
  "parameter": "параметр",
  "property": "свойство",
  "variable": "переменная",
  "if": "если",
  "else": "иначе",
  "for": "для",
  "while": "пока",
  "do": "делать",
  "switch": "переключатель",
  "case": "случай",
  "break": "прервать",
  "continue": "продолжить",
  "return": "вернуть",
  "null": "null",
  "true": "истина",
  "false": "ложь",
  "int": "целое число",
  "double": "вещественное число",
  "string": "строка",
  "list": "список",
  "map": "карта",
  "set": "множество",
  "future": "будущее",
  "async": "асинхронный",
  "await": "ожидать",
  "run": "запустить",
  "main": "главный",
  "import": "импортировать",
  "export": "экспортировать",
  "libraryPath": "путь к библиотеке",
  "sourcePath": "путь к исходному коду",
  "compile": "компилировать",
  "runApp": "запустить приложение",
  "debug": "отладка",
  "profile": "профилирование",
  "test": "тестирование",
};

class ListOne extends StatelessWidget {
  const ListOne({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["Alice", "Bob", "Charlie", "Diana", "Eve", 'Hello'];
    List<int> number = [6, 5, 4, 3, 2, 1];
    return Scaffold(
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.amberAccent,
                  height: 100,
                  child: Center(
                      child: Column(
                    children: [
                      Text('${names[index]}'),
                      Text('$index'),
                      Text('${number[index]}')
                    ],
                  )),
                ),
              );
            }));
  }
}
