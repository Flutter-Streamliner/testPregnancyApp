import 'package:fitnessapp/consts/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AimBackgroundWidget extends StatelessWidget {
  final Widget child;

  const AimBackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(AppImages.bubbleItemRed),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SvgPicture.asset(AppImages.bubbleHalfItemRed),
            ),
            Positioned(
              left: 24,
              bottom: 120,
              child: SvgPicture.asset(AppImages.bubbleItemPurple),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 284,
                child: child,
              ),
            )
          ],
        )
    );
  }
}
