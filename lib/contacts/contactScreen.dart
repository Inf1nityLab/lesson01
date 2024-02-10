import 'package:book/contacts/add_contact_screen.dart';
import 'package:book/contacts/data/contact_model.dart';
import 'package:book/contacts/service/contact_service.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'compas/compas.dart';

class Contacts extends StatelessWidget {
  Contacts({super.key});

  final ContactService _contactService = compas<ContactService>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _contactService.poluchitData(),
      builder: (context, AsyncSnapshot<List<ContactModel>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ContactScreen(snapshot.data ?? []);
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

class ContactScreen extends StatefulWidget {
  final List<ContactModel> contacts;
  ContactScreen( this.contacts);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: SizedBox(
            height: 70,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddScreen()));
              },
              child: const Row(
                children: [
                  Icon(Icons.person_add_sharp),
                  Text('создать контакт'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ValueListenableBuilder(
              valueListenable: Hive.box<ContactModel>('contacts').listenable(),
              builder: (context, Box<ContactModel> box, _) {
                return ListView.builder(itemCount: box.values.length,itemBuilder: (context, index) {
                  var contacts = box.getAt(index);
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text(contacts!.name),
                  );
                });
              }),
        )
      ],
    );
  }
}
