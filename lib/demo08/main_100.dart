import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
