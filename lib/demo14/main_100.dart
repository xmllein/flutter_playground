import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';

void main() => runApp(const MyApp());

// Flutter 日期 时间组件 flutter_cupertino_date_picker 的使用
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            InkWell(
                child: Row(
                  children: [
                    Text('Date'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    onMonthChangeStartWithFirstDate: true,
                    pickerTheme: DateTimePickerTheme(
                      showTitle: true,
                      confirm: Text('custom Done',
                          style: TextStyle(color: Colors.red)),
                    ),
                  );
                })
          ],
        ));
  }
}
