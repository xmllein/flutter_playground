import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Flutter StatefulWidget 有状态组件 、页面上绑定数据、改变页面数据 、实现计数器功能 动态列表
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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<MyHomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 100),
            Text('$countNum'),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countNum++;
                });
              },
              child: const Text('跳转到第二个页面'),
            ),
          ],
        ));
  }
}



// class MyHomePage extends StatelessWidget {
//   final String title;

//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Column(
//           children: [
//             const SizedBox(height: 100),
//             const Text('nihao'),
//             const SizedBox(height: 100),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigator.pushNamed(context, '/second');
//               },
//               child: const Text('跳转到第二个页面'),
//             ),
//           ],
//         )); 
//   }
// }



