import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '5.dart';

String aaa=vall;
String bbb=vall1;
String ccc=vall2;
class homeaaaaa extends StatefulWidget {
  
  @override
  _homeaasState createState() => _homeaasState();
}


class _homeaasState extends State<homeaaaaa> {

@override
  void initState(){
    super.initState();
    this.getJsonData();
  }
   
  Future<String> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull('http://hcwindia.com/shadowcrewaaj3227/user/generate_auth_cookie/?insecure=cool&username=$vall&email=$vall1&password=$vall2'),
      headers: {"Accept": "application/json"} 
    );
    a=response.body;
    print(a);

    setState(() {
       l=a[11]+a[12];
       print(l);
    });
       return "Success";
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login'
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Column(
        children: <Widget>[
          Text(
            ''
          ),
RawMaterialButton(
  child: Text(
    'Register'
  ),
  fillColor: Colors.blue,
  onPressed: (){
        Navigator.of(context).pushNamed('/screen1');
  },
 
),


     ],
    ),
    );
  }}
