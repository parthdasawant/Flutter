import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Idcard(),
));

class Idcard extends StatefulWidget {
  const Idcard({super.key});

  @override
  State<Idcard> createState() => _IdcardState();
}

class _IdcardState extends State<Idcard> {
  int levelCounter = 0;
  String level='noob';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[700] ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            levelCounter += 1;
            if((levelCounter >= 5) && (levelCounter < 10)) {
              level = 'amateur';
            }
            else if(levelCounter > 10) {
              level = 'ultra pro max';
            } else {
              level = 'noob';
            }
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add, color: Colors.white, ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 25,),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 80.0,), ),
               // const SizedBox(height: 20.0,),
               Divider(height: 90.0,
               color: Colors.grey[200],),
               const Text('NAME',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              const SizedBox(height: 5),
              const Text('NEOTON',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,

                ),
              ),
              const SizedBox(height: 40),
              const Text('LEVEL',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(level,
                style: const TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                children: [
                  Icon(Icons.email, color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('neoton@gamil.com',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),)
                ],
              ),
            ],
          ),
        ));
  }
}
