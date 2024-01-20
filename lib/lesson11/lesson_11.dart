import 'package:flutter/material.dart';

class Lesson11 extends StatelessWidget {
  const Lesson11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Colors.primaries[index % Colors.primaries.length],
                    ),
                    Text('$index')
                  ],
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    color: Colors.primaries[index % Colors.primaries.length],
                    child:  Column(
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(),
                            Text('Hello'),
                            Icon(Icons.add)
                          ],
                        ),
                        Container(height: 250, color: Colors.white,),
                        const Row(children: [Icon(Icons.favorite), Icon(Icons.comment) ],)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigo,
                child: Text('$index'),
              ),
            );
          }),
    );
  }
}

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text('Page $index'),
              ),
            );
          }),
    );
  }
}
