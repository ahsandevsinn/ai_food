import 'package:ai_food/view/auth/otp_screen.dart';
import 'package:ai_food/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'view/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen(),
    );
  }
}
