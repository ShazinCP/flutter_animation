import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              text!,
              textStyle: const TextStyle(
                fontSize: 40,
                color: cBlackColor45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          totalRepeatCount: 2,
        ),
        Center(
          child: Container(
           decoration: BoxDecoration( color: cLightBrownWithOpacity,borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Text(
                    text ?? '',
                    style: const TextStyle(
                      fontSize: 40,
                      color: cWhiteColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  ),
            ),
          ),
        )
      ],
    );
  }
}
