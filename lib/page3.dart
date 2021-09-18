import 'package:flutter/material.dart';
import 'page2.dart';

class page3 extends StatelessWidget {
  final String email;
 final  String password;

  const page3({
     this.email='Your email',
     this.password='Your Password'
});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Container(
            margin:EdgeInsets.all(30),
            width: 400,
            height: 250,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(

                children: <Widget>[
                  Center(
                    child: Text('Your Account\n',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                  )
                  ,
                  Text('${email}\n\n${password}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
