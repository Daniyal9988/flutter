// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // to center the column
            children: const [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profil.jpeg'),
              ),
              Text(
                "Syed Daniyal Saeed",
                style: TextStyle(
                  fontFamily: 'Pacifico', // custom font
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FULL STACK DEVELOPER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'source sans',
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 134, 197, 192),
                  letterSpacing: -1.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 190.0,
                child: Divider(
                  color: Color.fromARGB(255, 101, 218, 190),
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+60195352749",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontFamily: "source sans",
                      ),
                    ),
                  )),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "sdani9988@gmail.com",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontFamily: "source sans",
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}



/* this is one way of adding instead of listtile
 Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "sdani9988@gmail.com",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontFamily: "source sans",
                      ),
                    ),
                  ],
                ),

*/