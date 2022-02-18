import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(const BTSApp());

class BTSApp extends StatelessWidget {
  const BTSApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('    HOW WELL D0 YOU KNOW BTS    '),
      ),
      body: const Questions(),
    ));
  }
}
