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
 title: Text('Responsive UI with MediaQuery'), 
 ), 
 body: ResponsiveLayout(), 
 ), 
 );
 } 
} 
class ResponsiveLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 var screenWidth = MediaQuery.of(context).size.width;
 if (screenWidth < 600) { 
 return MobileLayout();
 } else if (screenWidth < 1200) { 
 return TabletLayout();
 } else { 
 return DesktopLayout();
 } 
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
class TabletLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return Center( 
 child: Text( 
 'Tablet Layout', 
 style: TextStyle(fontSize: 24), 
 ), 
 );
 } 
} 
class DesktopLayout extends StatelessWidget { 
 @override 
 Widget build(BuildContext context) { 
 return const Center( 
 child: Text( 
 'Desktop Layout', 
 style: TextStyle(fontSize: 24),
 ), 
 );
 } 
}