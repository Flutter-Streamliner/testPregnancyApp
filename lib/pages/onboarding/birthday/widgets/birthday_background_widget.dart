import 'package:fitnessapp/consts/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BirthdayBackgroundWidget extends StatelessWidget {

  final Widget child;
  final Widget button;

  const BirthdayBackgroundWidget({
    Key? key,
    required this.child,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(AppImages.bubbleItemRed2),
          ),
          Positioned(
            right: 50,
            top: 40,
            child: SvgPicture.asset(AppImages.bubbleItemCirclePurple),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset(AppImages.bubbleItemRed3),
          ),
          Positioned(
            left: 24,
            bottom: 80,
            child: SvgPicture.asset(AppImages.bubbleItemPurple2),
          ),
          Center(
            child: SizedBox(
              height: 500,
              child: child,
            ),
          ),
          Positioned.fill(
            bottom: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: button,
            ),
          ),
        ],
      ),
    );
  }
}
