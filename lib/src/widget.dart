import 'package:flutter/material.dart';

class OverrideTextScaleFactor extends StatelessWidget {
  final Widget child;
  final double textScaleFactor;

  const OverrideTextScaleFactor({
    @required this.child,
    this.textScaleFactor = 1.0,
  })  : assert(child != null),
        assert(textScaleFactor != null);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: textScaleFactor,
      ),
      child: child,
    );
  }
}
