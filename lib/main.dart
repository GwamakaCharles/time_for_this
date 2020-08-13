import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World Travel App'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello World Travel'),
                Text('Discover the world'),
                Image(
                  image: AssetImage('images/pimLogo640.png'),
                ),
                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  onPressed: () => contactUs(context),
                  child: Text('Contact Us'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void contactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Contact Us'),
      content: Text('Mail us at hello@travel.co.tz'),
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Close'),
        )
      ],
    ),
  );
}
