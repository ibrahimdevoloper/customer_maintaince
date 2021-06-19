import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ICAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RiveAnimation.asset('assets/rive/full_ic_animation.riv'),
    );
  }
}
