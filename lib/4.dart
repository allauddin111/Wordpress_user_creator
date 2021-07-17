import 'package:flutter/material.dart';

class aamyApp extends StatefulWidget {
  @override
  _aaaaaaState createState() => _aaaaaaState();
}

class _aaaaaaState extends State<aamyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accesing Data Via '
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Column(
        children: <Widget>[
          Text(
            'User  not Registered, Check for the inputs passed....\nRetry Passing correct Username or Valid Email\nThank You'
          ),
RawMaterialButton(
  child: Text(
    'Go Back to HomePage...'
  ),
  fillColor: Colors.blue,
  onPressed: (){
           Navigator.of(context).pushNamed('/screen1');
          
  }),


     ],
    ),
    );
  }
}