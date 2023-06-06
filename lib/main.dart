

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
        title: const Text("Flutter App"),
        backgroundColor: Colors.teal[400],
      ),

      body: const Center(
        child: Text('Body is working',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        backgroundColor: Colors.teal[400],
        child: Text("CLICK"),
      ),
    );
  }
}

