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
  int counter = 0;
  List<int> colorarr = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(colorarr[0], colorarr[1], colorarr[2], 1.0),
      appBar: AppBar(
        title: const Text('QUOTES'),
        
    ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 50;
                if(counter > 100 && counter < 200){
                  colorarr[1] = (counter/10).ceil();
                  colorarr[2] = counter;
                }
                else{
                  colorarr[0] = (counter/10).ceil();
              }
                });
            }, child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('+',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
            ),
        ),
      ],
    ),);
  }
}

