import 'package:flutter/material.dart';
import 'package:library_management/Notifications.dart';
import 'package:library_management/Menu_page.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(90, 19, 175, 239),
    title: const Text('Settings',
    style: TextStyle(fontWeight: FontWeight.bold),),
    actions: [
    IconButton(
    icon: const Icon(Icons.person), // Replace with your desired icon
    onPressed: () {},
    ),
    ],
    ),
      body: Column(
        children:[
          Container(
            width: 600,
            height: 200,
            margin: const EdgeInsets.all(30.0),
            color: const Color.fromARGB(25,10,20,20),
          ),
         const Divider(),
             Container(
               margin: const EdgeInsets.only(right: 220.0),
               child: const Text('Other settings',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
             ),
             const SizedBox(height: 10.0,),
              ListTile(
                leading: const Icon(Icons.perm_identity),
                trailing: const Icon(Icons.arrow_forward_ios,size: 18.0,),
                title: const Text('Update academic year'),
                onTap: (){
                  showDialog(context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        title: const Text('Update academic year'),
                        content: Container(
                          height: 180,
                          child: const Column(
                            children: [
                              TextField(
                                // controller: titleController,
                                decoration: InputDecoration(labelText: 'Academic year'),
                              ),
                              TextField(
                                // controller: authorController,
                                decoration: InputDecoration(labelText: 'Branch'),
                              ),
                              TextField(
                                // controller: authorController,
                                decoration: InputDecoration(labelText: 'Roll no'),
                              ),// Add any additional fields or widgets as needed.
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          },
                              child:const Text('Submit')),
                        ],
                      );
                    },
                  ); // Handle tap event
                },
              ),

              ListTile(
                leading: const Icon(Icons.update),
                trailing: const Icon(Icons.arrow_forward_ios,size: 18.0,),
                title: const Text('Update password'),
                onTap: (){
                  showDialog(context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        title: const Text('Update password'),
                        content: Container(
                          height: 180,
                          child: const Column(
                            children: [
                              TextField(
                                // controller: titleController,
                                decoration: InputDecoration(labelText: 'Current password'),
                              ),
                              TextField(
                                // controller: authorController,
                                decoration: InputDecoration(labelText: 'New password'),
                              ),
                              TextField(
                                // controller: authorController,
                                decoration: InputDecoration(labelText: 'Confrim password'),
                              ),// Add any additional fields or widgets as needed.
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          },
                              child:const Text('Submit')),
                        ],
                      );
                    },
                  ); // Handle tap event
                },
              ),

              ListTile(
                leading: const Icon(Icons.logout),
                trailing: const Icon(Icons.arrow_forward_ios,size: 18.0,),
                title: const Text('Log out'),
                onTap: (){
                  // Handle tap event
                },
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const Menupage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const notifications()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
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
