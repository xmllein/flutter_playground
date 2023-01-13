import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  MyHomePage get widget => super.widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 5.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(50, 30, 60, 100),
          transform: Matrix4.rotationZ(0.1),
          alignment: Alignment.bottomCenter,
          child: const Text(
            'hello, yarn create vite ts-antd-vite --template vue-ts',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
              letterSpacing: 1.5,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            // textScaleFactor: 2.0,
          ),
        ),
      ),
    );
  }
}
