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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Image.asset('assets/images/album.jpg'),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Image.asset('assets/images/album.jpg'),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Image.asset('assets/images/album.jpg'),
              ],
            ),
          ),
          // child: Container(
          //   height: 100,
          //   color: Colors.red,
          // ),
          // ]),
          // Container(
          //   height: 100,
          //   color: Colors.red,
          // ),
          // Container(
          //   height: 100,
          //   color: Colors.green,
          // ),
          // Container(
          //   height: 100,
          //   color: Colors.blue,
          // ),
          // Container(
          //   height: 100,
          //   color: Colors.yellow,
          // ),
          // Container(
          //   height: 100,
          //   color: Colors.purple,
          // ),
          // Container(
          //   height: 100,
          //   color: Colors.orange,
          // ),
        ],
      ),
      // body: SizedBox(
      //   width: 300,
      //   child: AspectRatio(
      //     aspectRatio: 16 / 9,
      //     child: Container(
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
    );
  }
}
