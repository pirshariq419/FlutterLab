import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Counter with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(title: Text("State Management with Provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: ${counter.counter}"),
            ElevatedButton(
              onPressed: counter.increment,
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
