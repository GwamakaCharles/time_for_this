import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeText();
  }
}

class ChangeText extends StatefulWidget {
  @override
  _ChangeTextState createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  int _clicked = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            buttonClicked();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('I Did It!'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You clicked the button this many times.',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$_clicked',
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }

  void buttonClicked() {
    setState(() {
      _clicked++;
    });
  }
}
