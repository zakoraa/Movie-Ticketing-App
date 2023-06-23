import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp2/core.dart';
import 'package:movieapp2/main_page.dart';

import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1E1F27),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(const TextTheme(
              bodyText2: TextStyle(color: Colors.white, fontSize: 16)))),
      home: const MainPage(),
      getPages: AppPage.pages,
    );
  }
}
