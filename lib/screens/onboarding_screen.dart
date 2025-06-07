import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widgets/components/Background.dart';
import 'package:flutter_widgets/data/images.dart';
import 'package:flutter_widgets/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          _onboardImage(),
          _heading(),
          _subheading(),
          Spacer(),
          _button(context),
        ],
      ),
    );
  }

  _onboardImage() {
    return FadeInDown(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 800),
      child: SvgPicture.asset(AppImages.onboarding),
    );
  }

  _heading() {
    return FadeInUp(
      delay: const Duration(milliseconds: 700),
      duration: const Duration(milliseconds: 800),
      child: Text(
        "Adventure Awaits",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  _subheading() {
    return FadeInUp(
      delay: const Duration(milliseconds: 900),
      duration: const Duration(milliseconds: 1000),
      child: Text(
        "Discover breathtaking places, plan unforgettable trips, and create memories that last a lifetime.",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  _button(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1100),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text(
          "Get Started",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
