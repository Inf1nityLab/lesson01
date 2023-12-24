import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final String number = '400';
    final String sent = 'My Firts app';
    final double height = 350.0;
    final int numr = 20;


    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                          fontSize: 30, // размер
                          color: Colors.white, // цвет
                          fontWeight: FontWeight.bold // жирность
                          ),
                    ),
                    Icon(
                      Icons.notification_add,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '12.20.2200',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_upward,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(sent),
                          Text('Sending payment to Client')
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                       Text('$number'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
