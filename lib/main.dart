import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indicai/pages/login/login.dart';
import 'package:indicai/pages/signup/signup.dart';
import 'package:indicai/pages/signup/signup-vendor.dart';

import 'pages/splashScreen.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    FirebaseAuth.instance
    .authStateChanges()
    .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (_) => SplashScreen(),
        "/login": (_) => Login(),
        "/signup/email-step": (_) => SignupEmailStep(),
        "/signup/password-step": (_) => SignupPasswordStep(),
        "/signup/account-options-step": (_) => SignupAccountOptionsStep(),
        "/signup/vendor-name-step": (_) => SignupVendorNameStep(),
        "/signup/vendor-specialties-step": (_) => SignupVendorSpecialtiesStep(),
        "/signup/vendor-adress-step": (_) => SignupVendorAdressStep(),
        "/signup/vendor-opening-hours-step": (_) => SignupVendorOpeningHoursStep(),
        "/signup/vendor-opening-hours2-step": (_) => SignupVendorOpeningHours2Step(),
        "/signup/vendor-opening-hours3-step": (_) => SignupVendorOpeningHours3Step(),



      },
    );
  }
}