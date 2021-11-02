import 'package:flutter/material.dart';

import 'package:plantapp/src/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/src/pages/login_page.dart';
import 'package:plantapp/src/utils/main_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData themeData = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(),
      theme: themeData.copyWith(
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
