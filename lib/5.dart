import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var a='';
var l='';

String vall;
String vall1;
String vall2;

class homeaaa extends StatefulWidget {
  
  @override
  _homeaaState createState() => _homeaaState();
}


class _homeaaState extends State<homeaaa> {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Login'
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Column(
        children: <Widget>[
TextFormField(
    decoration: InputDecoration(labelText: 'Username'),
    validator: (String value) {
      if (value.isEmpty) {
          print('Please enter your Email.');
      }
      return "success";
    },
    onChanged: (String value) => setState(() => vall = value),
),
TextFormField(
    decoration: InputDecoration(labelText: 'Password'),
    validator: (String value) {
      if (value.isEmpty) {
          print('Please enter your Email.');
      }
      return "success";
    },
    onChanged: (String value) => setState(() => vall1 = value),
), 
TextFormField(
    decoration: InputDecoration(labelText: 'Password'),
    validator: (String value) {
      if (value.isEmpty) {
          print('Please enter your Email.');
      }
      return "success";
    },
    onChanged: (String value) => setState(() => vall2 = value),
), 

RawMaterialButton(
  child: Text(
    'Login'
  ),
  fillColor: Colors.blue,
  onPressed:(){
    print(vall);print(vall1);print(vall2);
           Navigator.of(context).pushNamed('/screen7');
  },
)]));}


  }
