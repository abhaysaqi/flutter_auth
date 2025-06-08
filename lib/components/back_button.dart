import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/colors.dart';

class BackBtn extends StatelessWidget {
  final VoidCallback? onBack;

  const BackBtn({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 8),
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColor.backBtnColor),
        onPressed:
            onBack ??
            () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                Navigator.pop(context); // Optional fallback if using GetX
              }
            },
      ),
    );
  }
}
