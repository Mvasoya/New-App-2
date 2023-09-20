// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations, use_key_in_widget_constructors, camel_case_types, avoid_print, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/items.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

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
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
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
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16
                    ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card
                  (clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder
                  (borderRadius: BorderRadius.circular(10)),  
                    child: GridTile
                  (header: Container(
                    child: Text(item.name,style: TextStyle(color: Colors.white),),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                    ),
                    ),
                    child: Image.network(item.image),
                    footer: Container(
                    child: Text(item.price.toString(),
                    style: TextStyle(color: Colors.white),),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    ),
                    )
                  );
                },
                itemCount: CatalogModel.items?.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
    );
  }
}
