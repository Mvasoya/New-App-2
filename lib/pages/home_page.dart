// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 10; 
    final String name = "Meet";

    return Scaffold(
      appBar: AppBar(
          centerTitle:true,
          title: Text("Catalog App",
          style: TextStyle(
            color: Colors.black),)
          
      ),
      body: Center(
        child: Container(
          child: Text("welcome  Home  for  $days  days  with  $name"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
