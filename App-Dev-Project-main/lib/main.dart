import 'package:flutter/material.dart';
import 'package:homeservice/account_info.dart';
import 'package:homeservice/gridview.dart';
import 'package:homeservice/loginpage.dart';
import 'package:homeservice/signuppage.dart';

import 'intropage.dart';
import 'models/service_appoint.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: IntroPages(),
        routes: {
          '/homepages': (context) => HomeScreen(),
          '/loginpage': (context) => const LoginPage(),
          '/signuppages': (context) => const SignUpPages(),
          '/aboutpage': (context) => const ProfilePages(),
          '/appointmentpage': (context) => const AppointmentPage(),
          '/account_info': (context) => const AccountInformationScreen(),
        });
  }
}
