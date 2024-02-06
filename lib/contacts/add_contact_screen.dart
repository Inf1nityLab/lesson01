import 'package:book/contacts/data/contact_model.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController nameController = TextEditingController();

  void addName(){
    setState(() {
      ContactModel name = ContactModel(name: nameController.text, number: '');
      numbers.add(name);
    });
    Navigator.pop(context);
  }
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
                  addName();
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
        ],
      ),
    );
  }
}
