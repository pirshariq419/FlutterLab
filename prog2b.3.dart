import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Stack Example'), backgroundColor: Colors.greenAccent[400]),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(width: 300, height: 300, color: Colors.red),
              Container(width: 250, height: 250, color: Colors.black),
              Container(width: 200, height: 200, color: Colors.purple),
            ],
          ),
        ),
      ),
    ),
  ));
}
