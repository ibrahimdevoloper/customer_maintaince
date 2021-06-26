import 'package:flutter/material.dart';

// for displaying data only
class BlueGlassContainer extends StatelessWidget {
  final Widget _child;
  double _height;
  double _width;
  BorderRadius _borderRadius;
  Offset _offset;
  double _spreadRadius;
  double _blurRadius;

  BlueGlassContainer({
    Key key,
    @required Widget child,
    double height,
    double width,
    BorderRadius borderRadius,
    Offset offset,
    double spreadRadius,
    double blurRadius,
  })  : this._child = child,
        this._height = height,
        this._width = width,
        this._borderRadius = borderRadius ??
            BorderRadius.all(
              Radius.circular(16),
            ),
        this._offset = offset ?? Offset(1, 3),
        this._spreadRadius = spreadRadius ?? 2,
        this._blurRadius = blurRadius ?? 5,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF143777).withOpacity(0.5),
            Color(0xFF143777).withOpacity(0.7),
            Color(0xFF143777).withOpacity(0.5),
          ],
          stops: [0, 0.5, 1],
        ),
        borderRadius: _borderRadius,
        // BorderRadius.all(
        //   Radius.circular(_borderRadius),
        // ),
        boxShadow: [
          // BoxShadow(
          //   color: Colors.black.withOpacity(0.3),
          //   spreadRadius: 2,
          //   blurRadius: 5,
          //   offset: Offset(1, 3), // changes position of shadow
          // )
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: _offset, // changes position of shadow
          )
        ],
      ),
      child: _child,
    );
  }
}
