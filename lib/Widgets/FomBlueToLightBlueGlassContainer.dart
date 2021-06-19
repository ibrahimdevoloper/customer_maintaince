import 'package:flutter/material.dart';

// for text fields
class FomBlueToLightBlueGlassContainer extends StatelessWidget {
  final Widget _child;
  double _hight;
  double _width;
  double _borderRadius;

  FomBlueToLightBlueGlassContainer({
    Key key,
    @required Widget child,
    double hight,
    double width,
    double borderRadius,
  })  : this._child = child,
        this._hight = hight,
        this._width = width,
        this._borderRadius = borderRadius ?? 16,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      height: _hight,
      width: _width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xFF143777).withOpacity(0.5),
            // Color(0xFF143777).withOpacity(0.7),
            // Color(0xFF143777).withOpacity(0.5),
            Color(0xFF5AB2F7).withOpacity(0.4),
            Color(0xFF12CFF3).withOpacity(0.4),
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
