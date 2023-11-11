// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Functions and methods
  void userTapped() {
    print("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App Bar"),
            backgroundColor: Colors.red,
            elevation: 0,
            leading: Icon(Icons.menu),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          ),

          /*body: SingleChildScrollView(*/
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              //1st box
              Container(
                height: 300,
                width: 300,
                color: Colors.orange,
              ),

              //2nd box
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[400],
              ),

              //3rd box
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple[200],
                child: GestureDetector(
                  onTap: userTapped,
                  child: Center(child: Text("Tap me!")),
                ),
              ),
            ],
          ),
        )

        /* Center(
            child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(25),
          /*child: Text(
            "Mitch KOKO",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),*/
          child: Icon(
            Icons.star,
            color: Colors.white,
            size: 64,
          ),
        )),*/
        // ),
        );
  }
}
