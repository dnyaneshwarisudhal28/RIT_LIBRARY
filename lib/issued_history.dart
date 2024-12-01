import 'package:flutter/material.dart';
import 'package:library_management/Menu_page.dart';
import 'package:library_management/Setting_page.dart';
import 'package:library_management/Fine_on_book.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(90, 19, 174, 239),
        title: const Text('Books History',
          style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: const Icon(Icons.person), // Replace with your desired icon
            onPressed: () {
              // Add the action you want when the icon is pressed
            },
          ),
        ],
      ),

      body: const Center(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard),
      //       label: 'Dashboard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: 'Notifications',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.blueAccent, // Color for selected tab
      //   unselectedItemColor: Colors.grey,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index; // Update selected index
      //     });
      //     switch (index) {
      //       case 0:
      //         Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(builder: (context) =>const Menupage()),
      //         );
      //         break;
      //       case 1:
      //         Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(builder: (context) =>const Fines()),
      //         );
      //         break;
      //       case 2:
      //         Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(builder: (context) =>const Settings()),
      //         );
      //         break;
      //       default:
      //         break;
      //     }
      //   },
      // ),
    );
  }
}
