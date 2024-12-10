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
 title: Text('Responsive UI Example'), 
 ), 
 body: ResponsiveLayout(), 
 ), 
 );
 } 
} 
class ResponsiveLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return LayoutBuilder( 
 builder: (context, constraints) { 
 if (constraints.maxWidth < 600) { 
 return MobileLayout();
 } else { 
 return TabletDesktopLayout();
 } 
 }, 
 );
 
 } 
} 
class MobileLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return Center( 
 child: Text( 
 'Mobile Layout', 
 style: TextStyle(fontSize: 24), 
 ), 
 );
 } 
} 
class TabletDesktopLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return Center( 
 child: Text( 
 'Tablet/Desktop Layout', 
 style: TextStyle(fontSize: 24), 
 ), 
 );
 } 
}