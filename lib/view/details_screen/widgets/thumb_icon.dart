import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/controller/thumb_icon_provider.dart';
import 'package:provider/provider.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThumbIconProvider>(
      builder: (context, iconProvider, child) {
        return TweenAnimationBuilder(
          tween: Tween<double>(
              begin: iconProvider.targetvalue, end: iconProvider.targetvalue),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return IconButton(
              icon: Icon(
                CupertinoIcons.hand_thumbsup_fill,
                color: iconProvider.iconColor,
                size: value,
              ),
              onPressed: () {
                iconProvider.changeIconColor();
              },
            );
          },
        );
      },
    );
  }
}
