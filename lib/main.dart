

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Colors.teal[400],
      ),

      body: Center(
        child: Text('Body is working',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Text('CLICK'),
        backgroundColor: Colors.teal[400],
      ),
    );
  }
}

