import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widgets/components/Background.dart';
import 'package:flutter_widgets/data/colors.dart';
import 'package:flutter_widgets/data/icons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final key = GlobalKey<FormState>();

    return Background(
      child: Column(
        children: [
          Spacer(flex: 1),
          _headig(),
          SizedBox(height: 20),
          _subheading(),
          Spacer(flex: 1),
          _loginForm(key, nameController, emailController, passController),
          // SizedBox(height: 10),

          // _forgetPassword(),
          Spacer(),
          SizedBox(height: 10),
          _signUpButton(),
          SizedBox(height: 30),
          _orContinueWithDivider(),
          SizedBox(height: 30),
          _loginIconButton(),
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
        "Sign Up",
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
        "It only takes a minute to get started.",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  _loginForm(
    final key,
    TextEditingController nameController,
    TextEditingController emailController,
    TextEditingController passController, {
    bool isShowPassword = false,
  }) {
    return Form(
      key: key,
      child: Column(
        children: [
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: nameController,
            decoration: InputDecoration(labelText: "Enter your name"),
            style: TextStyle(color: AppColor.txtfieldTxtColor),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(labelText: "Enter your email"),
            style: TextStyle(color: AppColor.txtfieldTxtColor),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: passController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Enter your password",
              suffixIcon: GestureDetector(
                onTap: () {
                  isShowPassword = !isShowPassword;
                },
                child: Icon(
                  !isShowPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
            style: TextStyle(color: AppColor.txtfieldTxtColor),
          ),
        ],
      ),
    );
  }

  _signUpButton() {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1100),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // _forgetPassword() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       Text(
  //         "Forget Password",
  //         style: TextStyle(color: AppColor.forgetPassColor),
  //       ),
  //     ],
  //   );
  // }

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
          Text(
            "Or continue with",
            style: TextStyle(
              color: AppColor.dividerColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [Color(0XFF000001), Color(0XFFa9a9a9)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _loginIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.authIconButtonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(AppIcons.google, height: 30, width: 30),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.authIconButtonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(AppIcons.apple, height: 32, width: 32),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.authIconButtonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(AppIcons.facebook, height: 30, width: 30),
        ),
      ],
    );
  }

  Widget _bottomRegistorNow() {
    return RichText(
      text: TextSpan(
        text: "Already have an account? ",
        style: TextStyle(color: AppColor.primaryTxtColor, fontSize: 14),
        children: [
          TextSpan(
            text: "Login Now",
            style: TextStyle(
              color: AppColor.txtButtonColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    log("login Now tapped");
                  },
          ),
        ],
      ),
    );
  }
}
