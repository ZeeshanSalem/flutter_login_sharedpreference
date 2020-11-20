import 'package:flutter/material.dart';
import 'package:flutter_login/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();

  String userName = "";
  String password = "";

  String signName = "";
  String signPass = "";

  SharedPreferences sharedPreference;

  void data() async {
    sharedPreference = await SharedPreferences.getInstance();
    signName = sharedPreference.getString("userName");
    password = sharedPreference.getString("password");
    print(signName);
    print(password);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
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
                  controller: _name,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      this.userName = value;
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
                  controller: _pass,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {
                      this.password = value;
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
                      color: Colors.blue,
                      child: Text("Login"),
                      onPressed: () {
                        print(userName);
                        print(password);
                        if (userName == signName || password == signPass) {
                          print("login");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        } else {
                          print("credential fail");
                        }
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
