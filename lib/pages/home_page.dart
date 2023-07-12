// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/items.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 10;
    final String name = "Meet";
    final dummylist = List.generate(100, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Catalog App",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:dummylist.length,
          itemBuilder: (context, index) {
            
            return ItemWidget(item: dummylist[index]);
          },
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
