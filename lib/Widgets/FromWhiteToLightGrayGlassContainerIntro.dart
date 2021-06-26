import 'package:flutter/material.dart';

// for text fields
class FromWhiteToLightGrayGlassContainerIntro extends StatelessWidget {
  final Widget _child;
  double _height;
  double _width;
  double _borderRadius;

  FromWhiteToLightGrayGlassContainerIntro({
    Key key,
    @required Widget child,
    double height,
    double width,
    double borderRadius,
  })  : this._child = child,
        this._height = height,
        this._width = width,
        this._borderRadius = borderRadius ?? 16,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            // 5D5D5D
            // border :6a6b75
            Color(0xFFebf4f5).withOpacity(0.60),
            Color(0xFFb5c6e0).withOpacity(0.60),
            // Color(0xFFf68080).withOpacity(0.50),
          ],
          stops: [0.1, 0.9],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: _child,
    );
  }
}
