import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            height: 70,
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.person_add_sharp),),
                TextButton(onPressed: (){}, child: const Text('создать контакт'))
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('$index'),
                  ),
                  title: const Text('Baiastan'),
                );
              }),
        )
      ],
    );
  }
}
