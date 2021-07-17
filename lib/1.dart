import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


String val;
String val1;
String val2;
  String val3;
String b;
String d;
class home extends StatefulWidget {
  
  @override
  _homeState createState() => _homeState();
}


class _homeState extends State<home> {
  List data;


  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull('http://hcwindia.com/shadowcrewaaj3227/get_nonce/?controller=user&method=register'),
      headers: {"Accept": "application/json"} 
    );
    b=response.body;
    print(b);

    setState(() {
        d=b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73];
       print(d);
    });
       return 'success';
  }
  @override
  Widget build(BuildContext context) {
  
        return  Scaffold(
          appBar: AppBar(
            title: Text(
              'Registration'
            ),
            centerTitle: true,
            backgroundColor: Colors.pinkAccent,
          ),
          body: new Column(
            children: <Widget>[
    TextFormField(
        decoration: InputDecoration(labelText: 'Name'),
        validator: (String value) {
          if (value.isEmpty) {
              print('Please enter your Email.');
          }
          return "success";
        },
        onChanged: (String value) => setState(() => val1 = value),
    ),
    TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        validator: (String value) {
          if (value.isEmpty) {
              print('Please enter your Email.');
          }
          return "success";
        },
        onChanged: (String value) => setState(() => val2 = value),
    ),
    TextFormField(
        decoration: InputDecoration(labelText: 'Password'),
        validator: (String value) {
          if (value.isEmpty) {
              print('Please enter your Email.');
          }
          return "success";
        },
        onChanged: (String value) => setState(() => val3 = value),
), 



RawMaterialButton(
  child: Text(
    'Next'
  ),
  fillColor: Colors.blue,
  onPressed: (){
           Navigator.of(context).pushNamed('/screen3');}
)]));
  }}