import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/components/Background.dart';
import 'package:flutter_widgets/data/colors.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final key = GlobalKey<FormState>();

    return Background(
      child: Column(
        children: [
          Spacer(flex: 1),
          _headig(),
          SizedBox(height: 20),
          _subheading(),
          Spacer(flex: 1),
          _loginForm(key, emailController),
          SizedBox(height: 10),
          _forgetPassword(),
          Spacer(),
          SizedBox(height: 10),
          _resetPassButton(),
          SizedBox(height: 30),
          _orContinueWithDivider(),
          SizedBox(height: 30),
          _bottomRegistorNow(),
          Spacer(),
        ],
      ),
    );
  }

  _headig() {
    return FadeInUp(
      delay: const Duration(milliseconds: 700),
      duration: const Duration(milliseconds: 800),
      child: Text(
        "Reset Password?",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
    );
  }

  _subheading() {
    return FadeInUp(
      delay: const Duration(milliseconds: 900),
      duration: const Duration(milliseconds: 1000),
      child: Text(
        "Please enter your image address",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  _loginForm(final key, TextEditingController emailController) {
    return Form(
      key: key,
      child: Column(
        children: [
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(labelText: "Enter your email"),
            style: TextStyle(color: AppColor.txtfieldTxtColor),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  _resetPassButton() {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1100),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Reset",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _forgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Forget Password",
          style: TextStyle(color: AppColor.forgetPassColor),
        ),
      ],
    );
  }

  _orContinueWithDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [Color(0XFFa9a9a9), Color(0XFF000001)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomRegistorNow() {
    return RichText(
      text: TextSpan(
        text: "Not a member? ",
        style: TextStyle(color: AppColor.primaryTxtColor, fontSize: 14),
        children: [
          TextSpan(
            text: "Register Now",
            style: TextStyle(
              color: AppColor.txtButtonColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    log("Register Now tapped");
                  },
          ),
        ],
      ),
    );
  }
}
