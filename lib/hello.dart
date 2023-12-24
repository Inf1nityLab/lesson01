import 'package:book/new_screen.dart';
import 'package:flutter/material.dart';

class MyNewScreen extends StatelessWidget {
  const MyNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NewScreen()));
              },
              child: const Text('Send money')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          TextButton(onPressed: () {}, child: Text('читать дальше...'))
        ],
      ),
    );
  }
}
