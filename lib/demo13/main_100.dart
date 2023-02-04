import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

void main() => runApp(const MyApp());

// Flutter FloatingActionButton实现类似闲鱼App底部导航凸起按钮导航
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var now = DateTime.now();
  var str = formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']);

  @override
  void initState() {
    super.initState();
    // print(now.millisecondsSinceEpoch);
    // print(DateTime.fromMillisecondsSinceEpoch(1672365044936));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$str',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            str = formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
