

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


void main() => runApp(const MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.teal[400],
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            print("icon button pressed");
          },
          icon: Icon(Icons.alternate_email),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.teal[400],
        child: Text("CLICK"),
      ),
    );
  }
}

