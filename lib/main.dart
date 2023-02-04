import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

void main() => runApp(const MyApp());

// Flutter Dio 库实现网络请求以及动态渲染数据
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    //
    // var MapData = {"name": "John", "age": 30};
    // var strData = '{"name": "John", "age": 30}';
    // print(json.encode(MapData));
    // print(json.decode(strData));
    // Map u = json.decode(strData);
    // print(u['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                onPressed: () async {
                  var apiUrl = 'http://a.itying.com/api/productlist';
                  var result = await http.get(Uri.parse(apiUrl));
                  // print(result.body);
                  setState(() {
                    _list = json.decode(result.body)['result'];
                  });
                },
                child: const Text('请求数据'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  var apiUrl = 'http://a.itying.com/api/productlist';
                  var dio = Dio();
                  dio.get(apiUrl).then((value) {
                    print(value.data);
                    setState(() {
                      _list = value.data['result'];
                    });
                  });
                },
                child: const Text('dio 请求数据'),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: _list.map((value) {
                return ListTile(
                  title: Text(value['title']),
                  // subtitle: Text(value['catename'].toString()),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
