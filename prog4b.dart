import 'package:flutter/material.dart';
void main() { 
 runApp(MyApp());
} 
class MyApp extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return MaterialApp( 
 title: 'Named Routes Example',  
 routes: { 
 '/': (context) => FirstScreen(), 
 '/second': (context) => SecondScreen(), 
 }, 
 initialRoute: '/', 
 );
 } 
} 
class FirstScreen extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return Scaffold( 
 appBar: AppBar( 
 title: Text('First Screen'), 
 ), 
 body: Center( 
 child: ElevatedButton( 
 onPressed: () { 
 Navigator.pushNamed(context, '/second');
 }, 
 child: Text('Go to Second Screen'), 
 ), 
 ), 
 );
 } 
} 
class SecondScreen extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return Scaffold( 
 appBar: AppBar( 
 title: Text('Second Screen'), 
 ), 
 body: Center( 
 child: ElevatedButton( 
 onPressed: () { 
 Navigator.pop(context);
 }, 
 child: Text('Go back to First Screen'), 
 ), 
 ), 
 );
 } 
}