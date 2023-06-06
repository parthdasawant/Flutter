
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Flutter App'),
    ),
    body: Center(
      child: Text('Body is working'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text('+'),
    ),
  ),
));