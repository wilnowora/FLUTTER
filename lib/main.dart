import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My First App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("My First App")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: const Text("Hello world, My name is"),
                ),
                Container(
                  child: const Text(
                    " Wilno!",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: const Text("Welcome to My First Flutter Apps"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.blue),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text(
                    "Login",
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {},
                )
              ],
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun")
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 187, 11, 26),
        unselectedItemColor: Color.fromARGB(255, 19, 5, 2),
      ),
    );
  }
}
