import 'package:flutter/material.dart';

import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:another_transformer_page_view/another_transformer_page_view.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Container(
        // height: 400.0,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                "https://picsum.photos/id/$index/300/300",
                fit: BoxFit.fill,
              );
            },
            itemCount: 4,
            loop: true,
            autoplay: true,
            viewportFraction: 0.8,
            scale: 0.9,
            // layout: SwiperLayout.STACK,R
            pagination: const SwiperPagination(),
            control: const SwiperControl(),
          ),
        ),
      ),
    );
  }
}
