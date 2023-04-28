// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButtton = false;
  final _formKey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButtton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changeButtton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/mello.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                            labelStyle: TextStyle(color: Colors.green)),
                        validator: (value) {
                          if (value!.isEmpty){
                            return "Username should not be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.green)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password should not be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6 or more";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),

                      Material(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.circular(changeButtton ? 50 : 8),
                        child: InkWell(
                          onTap: () => movetoHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButtton ? 50 : 150,
                            height: 45,
                            alignment: Alignment.center,
                            child: changeButtton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                          ),
                        ),
                      ),

                      //  ElevatedButton(
                      //   child: Text("Login"),
                      // style: TextButton.styleFrom(
                      //     backgroundColor: Colors.green,
                      //     minimumSize: Size(150, 45)),
                      //  onPressed: () {
                      //    Navigator.pushNamed(context, MyRoutes.homeroute);
                      // },
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
