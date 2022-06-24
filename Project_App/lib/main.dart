import 'package:flutter/material.dart';
import 'package:final_project/pages/coming_soon.dart';
import 'package:final_project/pages/coming_soon.dart';
import 'package:final_project/pages/home_page.dart';
// import 'package:flutter1/pages/splash_screen.dart';
import 'package:final_project/pages/login_page.dart';
// import 'package:flutter1/pages/product_page1.dart';
// import 'package:flutter1/pages/signup_page.dart';
import 'package:final_project/routs.dart';
import 'package:final_project/pages/demo_screen.dart';
import 'package:final_project/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
        fontFamily: GoogleFonts.cinzel(color: Colors.white).fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashcreenRoute,
      routes: {
        "/": (context) => SplashScreen(),
        MyRoutes.splashcreenRoute: (context) => SplashScreen(),
        MyRoutes.demoRoute: (context) => DemoScreen(),
        MyRoutes.commingsoon: (context) => HomePage1(),
        MyRoutes.homepageRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
