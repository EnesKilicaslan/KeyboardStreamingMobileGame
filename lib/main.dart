import 'package:flutter/material.dart';

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

class _MyAppHomeState extends State<MyAppHome>
{  
  @override
  Widget build(BuildContext context) {
    
    String lorem  = 'Lorem ipsum dolor sit amet, consectetur adipiscin gelit, seddo eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Klavye Delikanlisi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              lorem,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                background: Paint()..color = Colors.grey[300],
                fontSize: 24,
                letterSpacing: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 32),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}