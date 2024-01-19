import 'package:book/fifth_project/data_map.dart';
import 'package:flutter/material.dart';

class Lesson10Dictionary extends StatelessWidget {
  const Lesson10Dictionary({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: ListView.builder(itemCount: words.length,itemBuilder: (context, index){
        final key = words.keys.elementAt(index);
        final value = words[key];
        return ListTile(
          title: Text('${words.keys}'),
          subtitle: Text('${words.values}'),
        );
      }),
    );
  }
}
