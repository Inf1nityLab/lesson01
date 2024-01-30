import 'package:book/lesson12/body/strings.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            Color backgroundColor = index == 0 ? Colors.red : Colors.black;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialog(width);
                      });
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: backgroundColor,
                ),
              ),
            );
          }),
    );
  }

  Widget alertDialog(double width) {
    return AlertDialog.adaptive(
      title: Row(
        children: [
          CircleAvatar(
            radius: 10,
          ),
          Text(server),
          Text('Baias'),
          IconButton(onPressed: () {}, icon: Icon(Icons.cancel))
        ],
      ),
      content: Container(
        color: Colors.greenAccent,
        width: width,
      ),
    );
  }
}
