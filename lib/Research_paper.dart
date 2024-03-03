import 'package:flutter/material.dart';
import 'package:library_management/Menu_page.dart';
import 'package:library_management/Setting_page.dart';
import 'package:library_management/Fine_on_book.dart';

class ResearchPaper extends StatefulWidget {
  const ResearchPaper({super.key});

  @override
  State<ResearchPaper> createState() => _ResearchPaperState();
}

class _ResearchPaperState extends State<ResearchPaper> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(90, 19, 175, 239),
        title: const Text('Research paper history',
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

      body: const Center(
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          showDialog(context: context,
              builder: (BuildContext context){
            return SizedBox(
               width: 300.0,
            //  height: 200.0,
             child:AlertDialog(
               title: const Text('Request reaserach paper'),
               content: const Column(
                   children: [
                     TextField(
                      // controller: titleController,
                       decoration: InputDecoration(labelText: 'Title'),
                     ),
                     TextField(
                      // controller: authorController,
                       decoration: InputDecoration(labelText: 'Author'),
                     ), // Add any additional fields or widgets as needed.
                   ],
               ),
               actions: [
                 TextButton(onPressed: (){
                   Navigator.pop(context);
                 },
                     child:const Text('Submit')),
               ],
             ),
            );
              },
          );
        },

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
