import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: const Text("Container example")),
    body: Center
    (
      child:Container(
      height: 200,
      color: Colors.brown,
      width: 400,
      alignment: Alignment.center,
      child: const Text("Hello! I am inside a container!", style: TextStyle(fontSize: 20)),
    ),)
  ),
));




