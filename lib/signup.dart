import 'package:flutter/material.dart';
import 'package:login/loginscreen.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController namaLengkapInput = new TextEditingController();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController profesiInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void kembali() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Register",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
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
                      controller: namaLengkapInput,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Isi Nama Lengkap Anda";
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
                        hintText: "Masukkan Nama Lengkap",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Nama Lengkap",
                        labelStyle: TextStyle(color: Colors.black87),
                      )),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    height: 10,
                  ),
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
                      controller: profesiInput,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Pilih Profesi Anda";
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
                        hintText: "Pilih Profesi",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Profesi",
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
                        onTap: () => kembali(),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
