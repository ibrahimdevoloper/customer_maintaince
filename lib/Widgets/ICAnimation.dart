import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ICAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        height: 200,
        width: 200,
        child: RiveAnimation.asset(
          'assets/rive/full_ic_animation.riv',
        ),
      ),
    );
  }
}
