import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';
import '4.dart';
import '5.dart';
import '6.dart';
import '7.dart';
import '8.dart';
void main()=>runApp(new MaterialApp(
  home: myApp(),
  debugShowCheckedModeBanner: false,
  routes: <String, WidgetBuilder> {
    '/screen1': (BuildContext context) => new myApp(),
  '/screen2': (BuildContext context) => new home(),
  '/screen3': (BuildContext context) => new amyApp(),
  '/screen4': (BuildContext context) => new aamyApp(),
  '/screen6': (BuildContext context) => new homeaaa(),
    '/screen7': (BuildContext context) => new homeaaaaa(),
    '/screen8': (BuildContext context) => new amayaApp()
  },
));

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a New User Remotely!!!',
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Center(
        child:new Column(
          children: <Widget>[FlatButton(
        onPressed: (){
           Navigator.of(context).pushNamed('/screen2');
           
        },
        color: Colors.pink,
        child: Text(
          'Click here to Register New User'
        ),
      ),
      FlatButton(
        onPressed: (){
           Navigator.of(context).pushNamed('/screen6');
           
        },
        color: Colors.pink,
        child: Text(
          'Click here to Login'
        ),
      )])),
      );
  }
}