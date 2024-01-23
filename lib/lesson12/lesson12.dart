import 'package:flutter/material.dart';

class Person {
  // свойства
  // методы или функции
  final String name;
  final int age;
  final int number;

  Person({required this.name, required this.age, required this.number});
}

class StringO {
  void toUpperCase() {}
}

class ContainerOne {
  final Color color;
  final double? width;

  final double? height;

  ContainerOne({required this.color, this.width = 200, this.height});
}

class Instagram {
  final String nickName;
  final String picture;
  final String bigPicture;
  final String liked;
  final String times;

  Instagram(
      {required this.nickName,
      required this.picture,
      required this.bigPicture,
      required this.liked,
      required this.times});
}

class Lesson12 extends StatelessWidget {
  const Lesson12({super.key});

  @override
  Widget build(BuildContext context) {
    List<Person> users = [
      Person(name: 'Aibek', age: 22, number: 0709358767),
      Person(name: 'Baias', age: 45, number: 0708454434),
      Person(name: 'Baias', age: 45, number: 0708454434),
    ];

    List<Instagram> profile = [
      Instagram(
          nickName: 'Baias',
          picture: 'assets/14.jpeg',
          bigPicture: 'assets/14.jpeg',
          liked: 'Bermet',
          times: '345 others'),
      Instagram(
          nickName: 'Erkin',
          picture: 'assets/18.jpeg',
          bigPicture: 'assets/18.jpeg',
          liked: 'Bermet',
          times: '1000 others'),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: profile.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                             CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('${profile[index].picture}'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text('${profile[index].nickName}'),
                            Expanded(child: Container()),
                            const Icon(Icons.abc_sharp)
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('${profile[index].bigPicture}',),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.favorite_border),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(Icons.comment),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(Icons.send),
                            Expanded(child: Container()),
                            const Icon(Icons.bookmark_border)
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Liked by ${profile[index].liked} and ${profile[index].times}')
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
