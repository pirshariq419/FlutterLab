import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
    return Scaffold(
      appBar: AppBar(title: Text('Responsive UI')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildLayout(false); 
          } else if (constraints.maxWidth < 1200) {
            return Row( 
              children: [
                _buildSidebar(),
                Expanded(child: _buildLayout(false)),
              ],
            );
          } else {
            return Row( 
              children: [
                _buildSidebar(),
                Expanded(child: _buildLayout(false)),
                _buildSidebar(),
              ],
            );
          }
        },
      ),
    );
  }

 
  Widget _buildLayout(bool isHorizontal) {
    return Column(
      children: [
        _buildSection('Header', Colors.blue),
        _buildSection('Content', Colors.green),
        _buildSection('Footer', Colors.orange),
      ],
    );
  }


  Widget _buildSidebar() {
    return Container(
      width: 200,
      color: Colors.orange,
      child: Center(child: Text('Sidebar', style: TextStyle(color: Colors.white))),
    );
  }


  Widget _buildSection(String title, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}
