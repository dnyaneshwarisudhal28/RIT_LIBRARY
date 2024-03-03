import 'package:flutter/material.dart';
import 'package:library_management/Menu_page.dart';

void main(){
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
     // backgroundColor: Color.fromARGB(255, 226, 219, 181),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(21, 18,110,20),
        title: const Text('RIT DIGITAL LIBRARY',
        style: TextStyle(fontFamily: 'times new roman',color: Colors.white,),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/rit.png',)
              ),
              const SizedBox(height: 60.0,),

                 ClipRRect(
                 // borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/ritlib.jpg',
                    width: 400,
                    height:200,
                   // fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
               // ),

              ),
              const SizedBox(height: 30.0,),

              Container(
                margin: const EdgeInsets.only(right:300.0),
                child: const Text('Email',
                  style: TextStyle(
                    fontSize: 18.0,
                    //fontFamily: 'times new roman',
                      fontWeight: FontWeight.bold
                  ),),
              ),

             // const SizedBox(height: 5.0,),


              //username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  //  margin: EdgeInsets.only(bottom: 100.0),
                  width: 350.0,
                  height: 50.0,
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline,size: 18.0,),
                      labelText: 'Enter Username',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Color.fromARGB(30, 50, 40, 50),
                      filled: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
              Container(
                margin: const EdgeInsets.only(right:262.0),
                child: const Text('Password',
                  style: TextStyle(
                      fontSize: 18.0,
                   //   fontFamily: 'times new roman',
                      fontWeight: FontWeight.bold
                  ),),
              ),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:Container(
                  width: 350.0,
                  height: 50.0,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_sharp,size: 18.0,),
                      labelText: 'Enter Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Color.fromARGB(30, 50, 40, 50),
                      filled: true,
                    ),
                  ),
                ),

              ),

              const SizedBox(height: 30.0), // Add space between text fields and button

              // Login button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>const Menupage()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(28, 322, 400, 20)),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)))
                ),
                child: const Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
