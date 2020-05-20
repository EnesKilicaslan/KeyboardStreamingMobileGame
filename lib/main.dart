import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppHomeState();
  }
}

class _MyAppHomeState extends State<MyAppHome> {

  int _step = 0;

  void onStartClick(){
    setState(() {
      ++_step;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    String lorem =
        '                               Lorem ipsum dolor sit amet, consectetur adipiscin gelit, seddo eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

    var _shownWidget;

    if(_step == 0)
      _shownWidget = <Widget>[
        Text("Welcome to the Game"),
        Container(
          padding: EdgeInsets.only(top:15),
          child: RaisedButton(
            child: Text("Start"),
            onPressed: onStartClick,
            
          ),
        )
        
        ];

    else if(_step == 1)
     _shownWidget = <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 40,

              child: Marquee(
                text: lorem,
                style: TextStyle(fontSize: 24, letterSpacing: 2, color: Colors.blue),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 0.0,
                velocity: 100.0,
                accelerationDuration: Duration(seconds: 5),
                accelerationCurve: Curves.ease,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 32),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'write..',
                ),
              ),
            )
          ];    

    return Scaffold(
      appBar: AppBar(
        title: Text("Klavye Delikanlisi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _shownWidget,
        ),
      ),
    );
  }
}
