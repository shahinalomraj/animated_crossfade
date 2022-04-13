import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
                firstChild: Container(
                  height: 200,
                  color: Colors.deepOrange,
                  child: Center(child: RaisedButton(onPressed: () {
                    setState(() {
                      check=false;
                    });
                  })),
                ),
                secondChild: Center(
                    child: Text(
                  "I Love Flutter",
                  style: TextStyle(fontSize: 50),
                )),
                crossFadeState: check
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),
          )
        ],
      ),
    );
  }
}
