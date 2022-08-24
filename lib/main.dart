import 'package:flix/core/colors.dart';
import 'package:flix/presentation/main_page/widgets/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            backgroundColor: backgroundColor,
            textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),bodyText2:  TextStyle(color: Colors.white),
            )),
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: Main_Page()));
  }
}
