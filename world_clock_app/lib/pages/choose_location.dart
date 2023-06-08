import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int Counter = 0;
  void getData() async{
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'neoton';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'slayer, sacrificer and coin collector';
    });

    print('$username - $bio');
  }
  
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose a Location",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: FilledButton(onPressed: () {
        setState(() {
          Counter += 1;
        });
      },
        child: Text('$Counter'),)
    );

  }
}
