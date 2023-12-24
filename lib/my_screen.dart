import 'package:book/our_screen.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = 'Bermilion';
    final String proff = 'Ui/Ux';
    final int number = 43;
    final double numberOne = 1212.3213;
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 45,
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          '$name',
                          style: const TextStyle(
                              fontSize: 30, color: Colors.cyan),
                        ),
                        Text('$proff'),
                        const SizedBox(height: 50,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('8900'),
                                Text('Income')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('5600'),
                                Text('Outcome')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('200'),
                                Text('loan')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
