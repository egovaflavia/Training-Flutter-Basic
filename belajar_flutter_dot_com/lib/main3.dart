// Pengenalan Basic AppBar Widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleSpacing: 21,
          toolbarOpacity: 0.5,
          title: Text('BelajarFlutter.com'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.green, Colors.blue])),
          ),
        ),
      ),
    );
  }
}
