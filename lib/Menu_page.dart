import 'package:flutter/material.dart';
import 'package:library_management/issued_history.dart';
import 'package:library_management/Fine_on_book.dart';
import 'package:library_management/Research_paper.dart';
import 'package:library_management/Setting_page.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color.fromARGB(255, 226, 219, 181),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(90, 19, 175, 239),
        title: const Text('Dashboard',
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

      body: Column(
        children: [
          // Card
          Card(
            margin: const EdgeInsets.only(top: 10.0),
            elevation: 3.0,
            child: Container(
              width: 360,
              height: 150,

              padding: const EdgeInsets.all(16.0),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Quote of the Day',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
         Container(
           margin: const EdgeInsets.only(right: 200.0),
           child: const Padding(
             padding: EdgeInsets.all(16.0),
             child: Text(
               'Current Issued Book:',
               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
             ),
           ),
         ),

          Container(
            width: 400.0,
            height: 150.0,
             color: const Color.fromARGB(25,10,20,20),
            // child: const Card(
            //
            //   elevation: 5.0,
            // ),
          ),
          const SizedBox(height: 10.0,),
          // Container(
             Expanded(
              child: ListView(
                children:  [
                  ListTile(
                    leading: const Icon(Icons.history_rounded),
                    title: const Text('Books issued history'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const History()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.note_outlined),
                    title: const  Text('Fines on books'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Fines()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.request_page),
                    title: const  Text('Research paper requests'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResearchPaper()));
                    },
                  ),
                ],
              ),
         // ),
      ),
    ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent, // Color for selected tab
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Menupage()),
              );
             break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Fines()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Settings()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}

