// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome",style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.bold,
            color:Colors.green 
          ),
          ),
           SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
            child: Column(children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.green)
               ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.green)
               ),
            ),
            SizedBox(
            height: 20.0,
          ),
          
           ElevatedButton(
           child:Text("Login"),
           style: TextButton.styleFrom(backgroundColor: Colors.green),
           onPressed: () {
            print("Get Lost");
           },
            ),

            ],),
          )
        ],
      )
    );
  }
}
