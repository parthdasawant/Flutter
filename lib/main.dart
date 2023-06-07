import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(182,68,64,1),
      appBar: AppBar(
        title: const Text('QUOTES'),
      ),
    );
  }
}

