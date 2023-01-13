import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '我是第$i条数据',
          style: const TextStyle(color: Colors.white),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(10),
      //   scrollDirection: Axis.vertical,
      //   children: _getData(),
      // ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                '我是第$index条数据',
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
          itemCount: _getData().length),
    );
  }
}
