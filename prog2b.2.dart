import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: const Text("Flutter Column Example")),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Container(
          height: 50,
          width : 100,
          color:Colors.blue,
          child: const Text("React.js", style: TextStyle(color: Colors.yellowAccent, fontSize: 20)),
        ),

        Container(
          color:Colors.green,
          height: 50,
          width : 100,
          child: const Text("Angular", style: TextStyle(color: Colors.yellowAccent, fontSize: 20)),
        ),

        Container(
          height: 50,
          width : 100,
          color:Colors.red,
          child: const Text("Flutter", style: TextStyle(color: Colors.yellowAccent, fontSize: 20)),
        ),
      ],
    ),
  ),
));

