import 'package:flutter/material.dart';
import 'Business.dart';
import 'School.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: () => {
            // Navigator.pushNamed(context, '/business')
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BusinessPage(num: 100),
              ),
            )
          },
          child: const Text('Business Page'),
        ),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/school')
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const SchoolPage(),
            //   ),
            // )
          },
          child: const Text('School Page'),
        ),
      ],
    );
  }
}
