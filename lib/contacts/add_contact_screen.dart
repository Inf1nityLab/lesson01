import 'package:book/contacts/data/contact_model.dart';
import 'package:book/contacts/service/contact_service.dart';
import 'package:flutter/material.dart';
import 'compas/compas.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController nameController = TextEditingController();
  final ContactService _contactService = compas<ContactService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel),
        ),
        title: const Text('Создать контакты'),
        actions: [
          SizedBox(
            width: 120,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  if(nameController.text.isNotEmpty){
                    var name = ContactModel(nameController.text, 'numberController.text');
                    _contactService.add(name);
                    Navigator.pop(context);
                  } else{
                    print('Our data is empty');
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent),
                child: const Text('Сохранить')),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body:  Column(
        children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.amberAccent,
            child: Center(
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.person),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Имя'
                  ),
                ),
              ),
            ],
          ),
          // homework второй textfield
          // numberControlerr
        ],
      ),
    );
  }
}
