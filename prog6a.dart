import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Mybutton(),
            Mybutton(),
          ]
        ),
      )
      
    );
  }
}

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
         ElevatedButton(onPressed: (){
          print("hello");
        },child: Text('Click button'),);
      
  }
}




