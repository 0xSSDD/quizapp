import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World'),),
        body: Center(child: Icon(Icons.cake),),
        floatingActionButton: FloatingActionButton(onPressed: () {},),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(label: 'foo', icon: Icon(Icons.call)),
          BottomNavigationBarItem(label: 'bar', icon: Icon(Icons.cached))
        ]),
      ),
    );

  }
}