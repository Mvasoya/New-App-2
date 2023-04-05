// ignore_for_file: prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 10;
    final String name = "Meet";

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Catalog App")
          ),
      ),
      body: Center(
        child: Container(
          child: Text("welcome Home for $days days with $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
