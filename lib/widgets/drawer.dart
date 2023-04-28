// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
         // padding: EdgeInsets.zero,
        children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 64, 184, 126)
                ),
                accountName: Text("Meet vasoya"),
                accountEmail: Text("meetvasoya@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: AssetImage("assets/images/drawer.png"),
                ),
                )
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home, 
                    color: Colors.black,
                  ),
                  title: Text("Home",textScaleFactor: 1.3,),
                  textColor: Colors.black,
                  onTap: () {
                          Navigator.pushNamed(context, MyRoutes.homeroute);
                       },
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled, 
                    color: Colors.black,
                  ),
                  title: Text("Profile",textScaleFactor: 1.3,),
                  textColor: Colors.black,
                  onTap: () {
                          Navigator.pushNamed(context, MyRoutes.loginroute);
                       },
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail, 
                    color: Colors.black,
                  ),
                  title: Text("Email",textScaleFactor: 1.3,),
                  textColor: Colors.black,
                  onTap: () {},
                )
      ]),
    );
  }
}
