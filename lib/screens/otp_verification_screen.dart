import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/components/Background.dart';
import 'package:flutter_widgets/components/back_button.dart';
import 'package:flutter_widgets/data/colors.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final int mobile = args?['mobile'] ?? 9056121325; //
    final bool resend = false;
    return Background(
      appbar: AppBar(leading: BackBtn()),
      child: Column(
        children: [
          // Spacer(flex: 1),
          _headig(),
          SizedBox(height: 20),
          _subheading(mobile: mobile),
          

          SizedBox(height: 20),
          _otpField(),
          SizedBox(height: 10),

          _confirmButton(resend),
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
        "Verification Code?",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
    );
  }

  _subheading({required int mobile}) {
    return FadeInUp(
      delay: const Duration(milliseconds: 900),
      duration: const Duration(milliseconds: 1000),
      child: RichText(
        text: TextSpan(
          text: "We have sent the code verification to +$mobile.",
          style: TextStyle(color: AppColor.primaryTxtColor, fontSize: 14),
          children: [
            TextSpan(
              text: "Change email id?",
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
      ),
    );
  }

  
  _otpField() {
    return Pinput(
      length: 4, // Number of pins
      keyboardType: TextInputType.number,
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),

      focusedPinTheme: PinTheme(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.teal, width: 2),
        ),
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      onCompleted: (pin) => log(pin),
      onSubmitted: (value) {
        log(value);
      },
    );
  }

  _confirmButton(bool isResend) {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // IconButton(onPressed: (){}, icon: Icon(Icons.app_blocking))
          if (!isResend)
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                child: Text(
                  "Resend",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryTxtColor,
                  ),
                ),
              ),
            ),
            if (!isResend)
          SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              // style: ElevatedButton.styleFrom(
              //   minimumSize: const Size(120, 50),
              // ),
              child: Text(
                "Confirm",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // ,
          // IconButton(onPressed: (){}, icon: Icon(Icons.architecture))
        ],
      ),
    );
  }
}
