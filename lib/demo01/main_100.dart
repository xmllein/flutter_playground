import 'package:flutter/material.dart';

// flutter 目录 入口 自定义组件 Center 组件 Text 组件、MaterialApp 组件、Scaffold 组件
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo Home Page'),
          ),
          body: const HomeContent(),
        ));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '你好 Flutter',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
