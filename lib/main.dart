// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'widgets/themes.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute:  MyRoutes.homeroute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeroute:(context) => homepage(),
        MyRoutes.loginroute:(context) => LoginPage()
      },
    );
  }
}
