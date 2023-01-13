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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
            // color: Colors.blue,
            // colorBlendMode: BlendMode.colorBurn,
            fit: BoxFit.cover,
          ),
          Container(
            height: 10,
          ),
          Image.network(
            'https://picsum.photos/250?image=1',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://picsum.photos/250?image=2',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://picsum.photos/250?image=6',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://picsum.photos/250?image=3',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://picsum.photos/250?image=4',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://picsum.photos/250?image=5',
            fit: BoxFit.cover,
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.settings,
          //     color: Colors.yellow,
          //   ),
          //   title: Text('Settings'),
          //   subtitle: Text('Settings'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.settings,
          //     size: 30,
          //   ),
          //   title: Text('Settings'),
          //   subtitle: Text('Settings'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          // ),
        ],
      ),
    );
  }
}
