import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'pages/home_page.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey),
        darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => homepage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
