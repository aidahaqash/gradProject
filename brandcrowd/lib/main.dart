import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/routs.dart';
import 'package:brandcrowd/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          bodyText1: TextStyle(color: kTextColor),
          // ignore: deprecated_member_use
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
