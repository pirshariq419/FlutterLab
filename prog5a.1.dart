import 'package:flutter/material.dart';
void main() { 
 runApp(MyApp());
} 
class MyApp extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return MaterialApp( 
 home: Scaffold( 
 appBar: AppBar( 
 title: Text('Stateful Widget Example'), 
 ), 
 body: Center( 
 child: MyStatefulWidget(), 
 ), 
 ), 
 );
 } 
} 
class MyStatefulWidget extends StatefulWidget { 
 @override 
 _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
} 
class _MyStatefulWidgetState extends State<MyStatefulWidget> { 
 int _counter = 0;
 void _incrementCounter() { 
 setState(() { 
 _counter++;
 });
 } 
 @override 
 Widget build(BuildContext context) { 
 return Column( 
 mainAxisAlignment: MainAxisAlignment.center, 
 children: <Widget>[ 
 Text( 
 'You have pressed the button this many times:', 
 ), 
 Text( 
 '$_counter', 
 style: Theme.of(context).textTheme.headlineMedium , 
 ), 
 ElevatedButton( 
 onPressed: _incrementCounter, 
 child: Text('Increment Counter'), 
 ), 
 ], 
 );
 } 
}