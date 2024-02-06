import 'package:book/contacts/add_contact_screen.dart';
import 'package:book/contacts/data/contact_model.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: EdgeInsets.only(left: 10),
          child: SizedBox(
            height: 70,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.person_add_sharp),
                  Text('создать контакт'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('$index'),
                  ),
                  title: Text('${numbers[index].name}'),
                );
              }),
        )
      ],
    );
  }
}
