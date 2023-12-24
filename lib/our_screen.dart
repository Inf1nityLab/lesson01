

import 'package:flutter/material.dart';

class OurScreen extends StatelessWidget {
  const OurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
             child: const Padding(
               padding: EdgeInsets.all(10.0),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Icon(Icons.menu),
                       Icon(Icons.more_vert)
                     ],
                   ),
                   CircleAvatar(radius: 50,)
                 ],
               ),
             ),
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              children: [
                const Text("Overview", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                const Icon(Icons.notification_add, size: 25, color: Colors.white,),
                Expanded(child: Container()),
                const Text("20.09.2020", style: TextStyle(fontSize: 15),)
              ],
            ),

            const SizedBox(
              height:30,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
            ),
            const SizedBox(
              height:20,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),
            const SizedBox(
              height:20,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),


          ],
        ),
      )
    );
  }
}
