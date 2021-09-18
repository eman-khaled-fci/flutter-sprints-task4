import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'page3.dart';
class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  TextEditingController _email=new TextEditingController();
  TextEditingController _password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //     width: 250,
              //     height: 250,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         fit: BoxFit.cover,
              //         image: AssetImage("images/flutterPic2.jpg"),
              //       ),
              //     ))
          Image(image: AssetImage("images/flutterPic2.jpg"))
              ,
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2.0),
                    ),
                    labelText: 'E-mail',
                    contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    labelStyle: TextStyle(
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              TextField(
                controller: _password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2.0),
                    ),
                    labelText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    labelStyle: TextStyle(
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              Container(
                width: double.infinity,
                height: 80,
                // margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page3(email: _email.text,password: _password.text)),
                    );
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Forgot password ? No yawa.Tap me',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                // margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white12),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'No Account ? Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
