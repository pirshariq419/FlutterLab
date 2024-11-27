import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: const Text('Insert Image Demo')),
    body: Center(
      child: Column(
        children: [
        
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGWEwXpRS7z7rVaGrjIWWTdE8_TiYTGiYjA&s'),

        ],
      ),
    ),
  ),
));
