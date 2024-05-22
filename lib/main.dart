import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/constants/app_color.dart';
import 'package:flutter_application_1/features/onboarding/onboardin_page.dart';
import 'package:flutter_application_1/features/sign_up/sign_up_page.dart';
import 'package:flutter_application_1/features/splash/splash_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const SignUpPage(),
      },
    );
  }
}
