import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Flutter 页面布局 Paddiing Row Column Expanded 组件详解
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Container(
        height: 400,
        color: Colors.yellow,
        child: Row(
          children: const [
            Expanded(
              flex: 1,
              child: IconContainer(
                Icons.search,
                color: Colors.black38,
                size: 80,
              ),
            ),
            Expanded(
              flex: 2,
              child: IconContainer(
                Icons.search_off_outlined,
                color: Colors.purple,
                size: 80,
              ),
            ),
            IconContainer(
              Icons.search,
              color: Colors.pink,
              size: 100,
            ),
            // IconContainer(
            //   Icons.home,
            //   color: Colors.greenAccent,
            //   size: 100,
            // ),
            // IconContainer(
            //   Icons.security_outlined,
            //   color: Colors.redAccent,
            //   size: 100,
            // ),
          ],
        ),
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   // childAspectRatio: 0.7,
      //   children: [
      //     const Padding(
      //       padding: EdgeInsets.all(10),
      //       // child: Image.network('https://picsum.photos/250?image=9'),
      //       child: IconContainer(Icons.search),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.network('https://picsum.photos/250?image=9'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.network('https://picsum.photos/250?image=9'),
      //     ),
      //     const Padding(
      //       padding: EdgeInsets.all(10),
      //       // child: Image.network('https://picsum.photos/250?image=9'),
      //       child: IconContainer(Icons.home),
      //     ),
      //     const Padding(
      //       padding: EdgeInsets.all(10),
      //       // child: Image.network('https://picsum.photos/250?image=9'),
      //       child: IconContainer(
      //         Icons.security_outlined,
      //         color: Colors.blue,
      //         size: 64,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.network('https://picsum.photos/250?image=9'),
      //     ),
      //   ],
      // ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;

  const IconContainer(this.icon,
      {super.key, this.size = 32, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color: color,
      child: Center(
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
