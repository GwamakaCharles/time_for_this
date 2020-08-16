import 'package:flutter/material.dart';
import 'package:hello_world/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double availableWidth = constraints.maxWidth;
        return Column(
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
              child: CircularPercentIndicator(
                radius: availableWidth / 2,
                lineWidth: 10,
                percent: 1,
                center:
                    Text('30.00', style: Theme.of(context).textTheme.headline4),
                progressColor: Color(0xff009688),
              ),
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
        );
      }),
    );
  }

  void emptyMethod() {}
}
