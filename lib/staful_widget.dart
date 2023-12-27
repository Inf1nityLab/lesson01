

import 'package:flutter/material.dart';

class StFullWidget extends StatefulWidget {
  const StFullWidget({super.key});

  @override
  State<StFullWidget> createState() => _StFullWidgetState();
}

class _StFullWidgetState extends State<StFullWidget> {
  //
  int number = 0;
  void plus(){
    setState(() {
      number += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$number', style: const TextStyle(fontSize: 30),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                plus();
              }, child: const Text('Plus'),),
              ElevatedButton(onPressed: (){}, child: const Text('Minus'),),
              ElevatedButton(onPressed: (){}, child: const Text('Multiple'),),
              ElevatedButton(onPressed: (){}, child: const Text('Divide'),),
            ],
          )
        ],
      ),
    );
  }
}
