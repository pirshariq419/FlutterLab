import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
  appBar: AppBar(title: const Text('Insert Image Demo')),
  body: Center(
  child: Column(
         children: [
        
          Image.asset('assets/camera.jpg'),

        ],
      ),
    ),
  ),
));
