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
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
              // color: Colors.red,
              // borderRadius: BorderRadius.circular(150),
              // image: const DecorationImage(
              //   image: NetworkImage('https://picsum.photos/200/200'),
              //   fit: BoxFit.cover,
              // ),
              ),

          // child: Image.network(
          //   'https://picsum.photos/200/200',
          //   alignment: Alignment.topLeft,
          //   color: Colors.yellow,
          //   colorBlendMode: BlendMode.darken,
          //   fit: BoxFit.cover,
          //   repeat: ImageRepeat.repeatY,
          // ),
          child: ClipOval(
            child: Image.network(
              'https://picsum.photos/200/200',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
