import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Flutter GridView 组件 以及动态 GridView
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
  List<Widget> _getListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            '我是第$i条数据',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
        padding: const EdgeInsets.all(10),
        children: _getListData(),
        // children: const [
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        //   Text('1'),
        // ],
      ),
    );
  }
}
