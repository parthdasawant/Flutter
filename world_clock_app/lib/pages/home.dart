import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(   // <-- ElevatedButton
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(
                    Icons.edit_location_alt,
                    size: 24.0,
                  ),
                  label: const Text('Choose Location'),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
