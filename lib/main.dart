import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'settings.dart';
import 'timer.dart';
import 'timermodel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Work Timer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: TimerHomePage());
  }
}

class TimerHomePage extends StatelessWidget {
  final CountDownTimer timer = CountDownTimer();

  @override
  Widget build(BuildContext context) {
    final List<PopupMenuItem<String>> menuItems = List<PopupMenuItem<String>>();
    menuItems.add(
      PopupMenuItem(
        child: Text('Settings'),
        value: 'Settings',
      ),
    );
    timer.startWork();
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Work Timer'),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (context) => menuItems.toList(),
              onSelected: (s) {
                if (s == 'Settings') {
                  goToSettings(context);
                }
              },
            ),
          ],
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
                        onPressed: () => timer.startWork(),
                        size: null,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff607D8B),
                        text: "Short Break",
                        onPressed: () => timer.startBreak(true),
                        size: null,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff455A64),
                        text: "Long Break",
                        onPressed: () => timer.startBreak(false),
                        size: null,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ],
                ),
                Expanded(
                  child: StreamBuilder<Object>(
                      initialData: TimerModel('00:00', 1),
                      stream: timer.stream(),
                      builder: (context, snapshot) {
                        TimerModel timer = snapshot.data;
                        return Container(
                          child: CircularPercentIndicator(
                            radius: availableWidth / 2,
                            lineWidth: 10,
                            percent:
                                (timer.percent == null) ? 1 : timer.percent,
                            center: Text(
                                (timer.time == null) ? '00:00' : timer.time,
                                style: Theme.of(context).textTheme.headline4),
                            progressColor: Color(0xff009688),
                          ),
                        );
                      }),
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
                        onPressed: () => timer.stopTimer(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff009688),
                        text: 'Restart',
                        size: null,
                        onPressed: () => timer.startTimer(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void goToSettings(BuildContext context) {
    print('in gotoSettings');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsScreen()));
  }
}
