import 'dart:ui';

import 'package:flutter/material.dart';

// for buttons
class FromWhiteToLightGrayGlassContainer extends StatelessWidget {
  Widget _child;
  double _height;
  double _width;
  double _borderRadius;
  Function _onPressed;

  FromWhiteToLightGrayGlassContainer({
    Key key,
    @required Widget child,
    @required Function onPressed,
    double height,
    double width,
    double borderRadius,
  })  : this._child = child,
        this._height = height,
        this._width = width,
        this._borderRadius = borderRadius ?? 16,
        this._onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: _onPressed,
        splashColor: Color(0xFFb5c6e0),
        borderRadius: BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(_borderRadius),
            ),
            // border: Border.all(
            //   width: 4,
            //   color: Color(0xFF5D5D5D),
            // ),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                // 5D5D5D
                // border :6a6b75
                Color(0xFFebf4f5).withOpacity(0.35),
                Color(0xFFb5c6e0).withOpacity(0.35),
                // Color(0xFFf68080).withOpacity(0.50),
              ],
              stops: [0.1, 0.9],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(1, 3), // changes position of shadow
              )
            ],
          ),
          child: _child,
        ),
      ),
    );
  }
}
