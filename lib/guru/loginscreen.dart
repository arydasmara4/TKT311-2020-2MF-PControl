import 'package:flutter/material.dart';
import 'package:login/homepage.dart';
import 'package:login/signup.dart';
import 'package:login/tab_akun.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "hanz";
  String password = "mantapjiwa";
  String alert = "siap login";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void prosesLogin() {
    if (_formKey.currentState.validate()) {
      if (usernameInput.text == username && passwordInput.text == password) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Homepage(Akun(
                      username: usernameInput.text,
                    ))));
      }
    } else {
      setState(() {
        alert = "Username atau password Salah";
      });
    }
  }

  void register() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(3),
              child: Image.asset("img/pcontrol.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang, Silahkan Masuk",
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Text(alert),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.all(20.0),
              ),
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      controller: usernameInput,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Isi Username Anda";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 25.0,
                        ),
                        hintText: "Masukkan Username",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87),
                      )),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    height: 10,
                  ),
                  TextFormField(
                      controller: passwordInput,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Isi Password Anda";
                        }

                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.vpn_key,
                          size: 25.0,
                        ),
                        hintText: "Masukkan Password",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black87),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: Colors.black87,
                    elevation: 5,
                    child: Container(
                      height: 35.0,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () => prosesLogin(),
                        child: Center(
                          child: Text(
                            "Masuk",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black87,
                    elevation: 5,
                    child: Container(
                      height: 35.0,
                      child: InkWell(
                        onTap: () => register(),
                        splashColor: Colors.white,
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
