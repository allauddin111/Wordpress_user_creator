import 'package:flutter/material.dart';
import '1.dart';
import 'package:http/http.dart' as http;

 
 String da=d;

String cc=da;
var a='';
var l='';


class amyApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<amyApp> {
  List data;
String bb=val1;
String bc=val2;
String bac=val3;

  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull('http://hcwindia.com/shadowcrewaaj3227/user/register/?username=$bb&email=${bc}@hcwindia.com&nonce=$da&display_name=$bb&password=$bac&insecure=cool'),
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
    String v=d;
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
RawMaterialButton(
  child: Text(
    'Register'
  ),
  fillColor: Colors.blue,
  onPressed: (){
    if(l=='ok'){
           Navigator.of(context).pushNamed('/screen5');
    }
    if(l=='er'){
      Navigator.of(context).pushNamed('/screen4');
    }
  }),


     ],
    ),
    );
  }
}
