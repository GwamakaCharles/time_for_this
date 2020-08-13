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
          builder: (context) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Hello World Travel'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Discover the world'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage('images/pimLogo640.png'),
                      ),
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
