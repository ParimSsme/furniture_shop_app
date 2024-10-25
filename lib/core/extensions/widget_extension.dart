import 'package:flutter/cupertino.dart';

extension WidgetExtension on Widget {
  Padding defaultScreenPadding({
    double left = 10,
    double top = 10,
    double right = 10,
    double bottom = 10,
  }) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding defaultItemPadding({
    double left = 10,
    double top = 10,
    double right = 10,
    double bottom = 10,
  }) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding defaultItemHorizontalPadding({double top = 0, double bottom = 0}) =>
      Padding(
        padding: EdgeInsets.only(left: 15, top: top, right: 15, bottom: bottom),
        child: this,
      );

  Padding defaultItemVerticalPadding({
    double left = 0,
    double right = 0,
    double top = 5,
    double bottom = 5,
  }) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
