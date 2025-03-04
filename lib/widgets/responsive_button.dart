import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double width;

  ResponsiveButton({super.key, this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isResponsive == true ? double.maxFinite : width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment:
        isResponsive == true ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.center,
        children: [
          if (isResponsive == true)
            AppText(text: "Book trip now", color: Colors.white),

          Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}
