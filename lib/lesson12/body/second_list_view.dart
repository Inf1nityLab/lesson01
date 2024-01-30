

import 'package:book/lesson12/body/strings.dart';
import 'package:book/lesson12/lesson12.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    List<Instagram> profile = [
      Instagram(
          nickName: server,
          picture: 'assets/14.jpeg',
          bigPicture: 'assets/14.jpeg',
          liked: 'Bermet',
          times: '345 others'),
      Instagram(
          nickName: 'baias',
          picture: 'assets/18.jpeg',
          bigPicture: 'assets/18.jpeg',
          liked: 'Bermet',
          times: '1000 others'),
    ];

    bool isFavorite = false;

    void favorite(int index) {
      setState(() {
        isFavorite = !isFavorite;
      });
    }
    return  Expanded(
      child: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 380,
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
                            backgroundImage:
                            AssetImage('${profile[index].picture}'),
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
                      InkWell(
                        onDoubleTap: () {
                          favorite(index);
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                    '${profile[index].bigPicture}',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                favorite(index);
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: isFavorite
                                    ? Colors.red
                                    : Colors.white,
                              )),
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
                      Text(
                          'Liked by ${profile[index].liked} and ${profile[index].times}')
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
