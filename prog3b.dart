import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    final screenWidth = MediaQuery.of(context).size.width;
    

    Widget content;
    if (screenWidth < 600) {
      content = _buildLayout(Icons.phone_android, "Mobile Layout", Colors.blue, 100, 20);
    } else if (screenWidth < 900) {
      content = _buildLayout(Icons.tablet, "Tablet Layout", Colors.green, 100, 20, isRow: true);
    } else {
      content = _buildLayout(Icons.desktop_windows, "Desktop Layout", Colors.red, 100, 20, isRow: true);
    }

    return Scaffold(
      appBar: AppBar(title: Text("Responsive Design")),
      body: Center(child: content),
    );
  }


  Widget _buildLayout(IconData icon, String text, Color color, double iconSize, double space, {bool isRow = false}) {
    return isRow
      ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: iconSize, color: color),
            SizedBox(width: space),
            Text(text, style: TextStyle(fontSize: 24)),
          ],
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: iconSize, color: color),
            SizedBox(height: space),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        );
  }
}
