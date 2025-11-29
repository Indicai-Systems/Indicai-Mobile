import 'package:flutter/material.dart';
import 'package:indicai/pages/login.dart';
import 'pages/splashScreen.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (_) =>  SplashScreen(),
        "/login": (_) => Login(),
      }
    );
  }
}
