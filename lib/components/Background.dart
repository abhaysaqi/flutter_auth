import 'package:flutter/material.dart';
import 'package:flutter_widgets/components/back_button.dart';
import 'package:flutter_widgets/data/images.dart';

class Background extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appbar;
  const Background({super.key, required this.child, this.appbar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(leading: BackBtn(),) ,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(AppImages.appBG, fit: BoxFit.cover),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
