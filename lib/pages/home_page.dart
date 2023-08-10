// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations, use_key_in_widget_constructors, camel_case_types, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/items.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final int days = 10;
  final String name = "Meet";

  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json")        ;
    final decodedData = jsonDecode(catalogJson);
    var Productsdata = decodedData["Products"];
    CatalogModel.items = List.from(Productsdata)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Catalog App",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)?  ListView.builder(
          itemCount: CatalogModel.items!.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.items![index]);
          },
        ):Center(child: CircularProgressIndicator(),),
      ),
      drawer: Mydrawer(),
    );
  }
}
