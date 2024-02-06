import 'package:book/contacts/contactScreen.dart';
import 'package:book/contacts/favorite_screen.dart';
import 'package:book/contacts/recentScreen.dart';
import 'package:book/contacts/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = const [
    FavoriteScreen(), //0
    RecentScreen(), //1
    ContactScreen() //2
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TextFieldWidget(),
      ),
      body: screens.elementAt(_currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (builder) {
              return _buildBottomSheetContent();
            },
          );
        },
        child: const Icon(Icons.format_list_numbered_sharp),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Избранные'),
          //0
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined), label: 'Недавние'),
          //1
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Контакты'),
          //2
        ],
      ),
    );
  }

  Widget _buildBottomSheetContent() {
    return Container(
      height: 300,
      color: Colors.white,
      child:  TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.cancel_schedule_send))
        ),
      ),
    );
  }

}
