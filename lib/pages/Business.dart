// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BusinessPage extends StatefulWidget {
  // const BusinessPage({super.key});

  int num;

  BusinessPage({this.num = 0, super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // setState(() {
          //   widget.num++;
          // })
          Navigator.of(context).pop()
        },
        child: const Text('返回'),
      ),
      appBar: AppBar(
        title: Text(widget.num.toString()),
      ),
      body: const Center(
        child: Text('Business Page'),
      ),
    );
  }
}
