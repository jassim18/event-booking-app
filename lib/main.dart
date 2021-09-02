import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'DashBoard.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  _launchURLBrowser() async {
    const url = 'http://arulvirumbi.epizy.com/login.php';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future login() async {

    var url = Uri.parse("https://shristi2k21.000webhostapp.com/login/login.php");
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var msg = "Success";
    var data =  json.decode(response.body);
  print(data);
    if (data == msg) {
      Fluttertoast.showToast(
          msg: "Authenticated",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      String mails = user.text;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard(mail : mails),),);
    }
    else {
      Fluttertoast.showToast(
          msg: "Invalid",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(title: Text('Are you sure you want to quit?'), actions: <Widget>[
                  RaisedButton(
                      child: Text('Yes'),
                      onPressed: () => Navigator.of(context).pop(true)),
                  RaisedButton(
                      child: Text('cancel'),
                      onPressed: () => Navigator.of(context).pop(false)),
                ])),
        child: Container(
        child: Scaffold(
        appBar: AppBar(
        title: Text(
        'Login ',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ),
        body: Container(
        height: 600,
        child: Card(
        color: Colors.amber,
        child: Column(
        children: <Widget>[
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
        'Login',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    labelText: 'Useremail',
    prefixIcon: Icon(Icons.person),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8)),
    ),
    controller: user,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(

    obscureText: true,
    decoration: InputDecoration(
    labelText: 'Password',
    prefixIcon: Icon(Icons.lock),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8)),
    ),
    controller: pass,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: MaterialButton(
    color: Colors.pink,
    child: Text('FORGOT PASSWORD?',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white)),
    onPressed: () {
    _launchURLBrowser();
    }

    ),
    ),
                     Row(
    children: <Widget>[
    Expanded(
    child: MaterialButton(
    color: Colors.pink,
    child: Text('Login',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white)),
    onPressed: () {
    login();
    },
    ),
    ),
    Expanded(
    child: MaterialButton(
    color: Colors.amber[100],
    child: Text('Register',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black)),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Register(),
    ),
    );
    },
    ),
    ),
    ],
    )
    ],
    ),
    ),
    ),
    ),
    ),
    );

  }
}
