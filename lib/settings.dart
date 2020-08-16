import 'package:flutter/material.dart';

import 'widgets.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Settings(),
    );
  }
}

void goToSettings(BuildContext context) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(),
      ),
    );

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 24);
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        childAspectRatio: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Text("Work", style: textStyle),
          Text(""),
          Text(""),
          SettingsButton(Color(0xff455A64), "-", -1),
          TextField(
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(
            Color(0xff009688),
            "+",
            1,
          ),
          Text(
            "Short",
            style: textStyle,
          ),
          Text(""),
          Text(""),
          SettingsButton(
            Color(0xff455A64),
            "-",
            -1,
          ),
          TextField(
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(Color(0xff009688), "+", 1),
          Text(
            "Long",
            style: textStyle,
          ),
          Text(""),
          Text(""),
          SettingsButton(
            Color(0xff455A64),
            "-",
            -1,
          ),
          TextField(
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(
            Color(0xff009688),
            "+",
            1,
          ),
        ],
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
