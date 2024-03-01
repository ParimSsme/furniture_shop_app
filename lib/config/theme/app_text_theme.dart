import 'package:flutter/material.dart';
import '../colors/furniture_colors.dart';

const _largeTitleStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Gelasio',
  height: 1.34,
);

const _mediumTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  fontFamily: 'Gelasio',
  height: 1.34,
);

final _bodyTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  fontFamily: 'Nunito Sans',
  height: 2,
  color: FurnitureColors.grey
);

final kBlackLargeTitleStyle = _largeTitleStyle.copyWith(
  color: FurnitureColors.black,
);

final kGreyMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: FurnitureColors.grey,
);

final kBodyTextStyle = _bodyTextStyle;
