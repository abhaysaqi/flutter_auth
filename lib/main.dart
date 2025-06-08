import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/colors.dart';
import 'package:flutter_widgets/screens/forget_password_screen.dart';
import 'package:flutter_widgets/screens/login_screen.dart';
import 'package:flutter_widgets/screens/onboarding_screen.dart';
import 'package:flutter_widgets/screens/otp_verification_screen.dart';
import 'package:flutter_widgets/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryTxtColor),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColor.primaryBtnColor,
            minimumSize: Size(double.infinity,50),alignment: Alignment.center,
            foregroundColor: AppColor.primaryBtnTxtColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColor.txtfieldColor, // optional
          labelStyle: TextStyle(color: AppColor.txtfieldHintColor),

          // Remove default borders
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),

          // When TextField is focused
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),

          // When there's an error
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),

          // When it's focused and has an error
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,)
      ),
      home: OtpVerificationScreen(),
    );
  }
}
