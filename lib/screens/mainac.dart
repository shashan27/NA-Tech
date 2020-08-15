import 'package:flutter/material.dart';
import 'package:natech2/main.dart';
import 'package:natech2/themes/style.dart';
import 'package:natech2/screens/signin.dart';

class mainac extends StatefulWidget {
  @override
  _mainacState createState() => _mainacState();
}

class _mainacState extends State<mainac> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: appLogo,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/natech.png'),
                radius: 70,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
              child: Text(
                "Welcome!!",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Lemonada',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.tealAccent,
                  decorationThickness: 2,
                ),
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 30,
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NAME',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'EMAIL',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              email,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return loginPage();
                }), ModalRoute.withName('/'));
              },
              color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            )
          ],
        ),
      ),
    );
  }
}
