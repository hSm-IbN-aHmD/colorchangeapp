import 'package:colorchangeapp/constants/constants.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List milestoneList = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
      BoolData.boolValue = !BoolData.boolValue;
      print(BoolData.boolValue);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BoolData.whiteAndYellow(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add,
        color: BoolData.whiteAndYellow(),
        ),
        backgroundColor: BoolData.blueAndRed(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}