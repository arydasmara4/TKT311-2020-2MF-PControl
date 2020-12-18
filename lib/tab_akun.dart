import 'package:flutter/material.dart';
import 'package:login/loginscreen.dart';

class Akun extends StatefulWidget {
  final String username;
  Akun({this.username});

  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.all(10.0),
              ),
              height: 10,
            ),
            Text(
              "Halo, ${widget.username}",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Keluar"),
            ),
          ],
        ),
      ),
    );
  }
}
