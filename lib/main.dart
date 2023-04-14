import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily:GoogleFonts.lato().fontFamily, 
        ),
        darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeroute:(context) => homepage(),
        MyRoutes.loginroute:(context) => LoginPage()
      },
    );
  }
}
