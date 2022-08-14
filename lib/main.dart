import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/src/bindings/login_binding.dart';
import 'package:plantapp/src/pages/login_page.dart';
import 'package:plantapp/src/utils/main_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData themeData = ThemeData();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => LoginPage(), binding: LoginBinding()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      initialBinding: LoginBinding(),
      theme: themeData.copyWith(
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: themeData.colorScheme.copyWith(
          primary: MainColors.darkgreen,
        ),
      ),
    );
  }
}
