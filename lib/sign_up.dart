import 'package:flutter/material.dart';
import 'package:flutter_login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  String name = "";
  String pass = "";

  SharedPreferences sharedPreference;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignUp"),
        ),
        backgroundColor: Colors.white70,
        body: Center(
          child: Container(
            //padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(0.0, 5),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userName,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      // margin: EdgeInsets.only(right: 20),
                      child: Icon(Icons.add),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    hintText: "hintText",
                    labelText: "labelText",
                    prefixIconConstraints: BoxConstraints.expand(
                      width: 40.0,
                      height: 40.0,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                TextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      pass = value;
                    });
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      // margin: EdgeInsets.only(right: 20),
                      child: Icon(Icons.add),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    hintText: "hintText",
                    labelText: "labelText",
                    prefixIconConstraints: BoxConstraints.expand(
                      width: 40.0,
                      height: 40.0,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Center(
                  child: RaisedButton(
                      child: Text("Sign Up"),
                      color: Colors.blue,
                      onPressed: () async {
                        print(name);
                        print(pass);
                        // if (pass.length < 1 && name.length < 1) {
                        sharedPreference =
                            await SharedPreferences.getInstance();
                        sharedPreference.setString("userName", this.name);
                        sharedPreference.setString("password", this.pass);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                        // }
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
