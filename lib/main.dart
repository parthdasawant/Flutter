import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Idcard(),
));

class Idcard extends StatelessWidget {
  const Idcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: Container(

          child: const Text('Body is working',
          style: TextStyle(

          ),),
        ),
      ),
    );
  }
}
