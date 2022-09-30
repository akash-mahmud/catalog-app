import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home.dart';
import 'package:flutter_application_1/Screens/login.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Home()
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme:  MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/": (context) => Login(),
          MyRoutes.homeRoute:(context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        },
        );
  }
}
