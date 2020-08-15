import 'package:flutter/material.dart';
import 'package:hello_world/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Work Timer',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: TimerHomePage());
  }
}

class TimerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Work Timer'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                  child: ProductivityButton(
                      color: Color(0xff009688),
                      text: "Work",
                      size: null,
                      onPressed: emptyMethod)),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                child: ProductivityButton(
                    color: Color(0xff607D8B),
                    text: "Short Break",
                    size: null,
                    onPressed: emptyMethod),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Expanded(
                child: ProductivityButton(
                    color: Color(0xff455A64),
                    text: "Long Break",
                    size: null,
                    onPressed: emptyMethod),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
          Expanded(
            child: Text('Hello'),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                child: ProductivityButton(
                    color: Color(0xff212121),
                    text: 'Stop',
                    size: null,
                    onPressed: emptyMethod),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                child: ProductivityButton(
                    color: Color(0xff009688),
                    text: 'Restart',
                    size: null,
                    onPressed: emptyMethod),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void emptyMethod() {}
}
