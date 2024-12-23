import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, 
            foregroundColor: Colors.white, 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Themed Button')),
        body: Column(
          children: [
            ElevatedButton(
            onPressed: () {
              print('Button Pressed!');
            },
            child: Text('Click Me'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Button Pressed!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
            ),
            child: Text('Click Me'),
          ),
          ],
        ),
        
      ),
    );
  }
}
