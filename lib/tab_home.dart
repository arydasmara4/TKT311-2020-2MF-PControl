import 'package:flutter/material.dart';
//import 'package:login/signup.dart';
//import 'package:login/signup.dart';

class Tabhome extends StatefulWidget {
  final String username;

  Tabhome({this.username});

  @override
  _TabhomeState createState() => _TabhomeState();
}

class _TabhomeState extends State<Tabhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.green,
        splashColor: Colors.white,
        onPressed: () => setState(() => {}),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
