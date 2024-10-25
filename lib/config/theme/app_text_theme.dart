import 'package:flutter/material.dart';
import '../colors/furniture_colors.dart';

const _nunitoSans = 'Nunito Sans';
const _gelasio = 'Gelasio';

const _largeTitleStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  height: 1.34,
);

const _mediumTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  height: 1.34,
);

const _smallTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  height: 1.34,
);

const _bodyTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: FurnitureColors.grey
);

const _captionTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: FurnitureColors.grey
);

const _buttonStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final kContainedButtonStyle = _buttonStyle.copyWith(
  color: FurnitureColors.onPrimary,
  fontFamily: _gelasio,
);

final kButtonStyle = _buttonStyle.copyWith(
  color: FurnitureColors.black,
  fontFamily: _gelasio,
);

final kBlackGelasioLargeTitleStyle = _largeTitleStyle.copyWith(
  color: FurnitureColors.black,
  fontFamily: _gelasio,
);

final kBlackNunitoLargeTitleStyle = _largeTitleStyle.copyWith(
  color: FurnitureColors.black,
    fontFamily: _gelasio,
);

final kGreyGelasioMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: FurnitureColors.grey,
    fontFamily: _gelasio,
);

final kBlackGelasioMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: FurnitureColors.black,
    fontFamily: _gelasio,
);

final kBodyNunitoHeight2TextStyle = _bodyTextStyle.copyWith(
  fontFamily: _nunitoSans,
  height: 2,
);

final kBodyNunitoTextStyle = _bodyTextStyle.copyWith(
  fontFamily: _nunitoSans,
  fontSize: 14,
);

final kBlackNunitoSmallTitleStyle = _smallTitleStyle.copyWith(
  fontFamily: _nunitoSans,
  fontSize: 14,
);

final kCaptionNunitoTextStyle = _captionTextStyle.copyWith(
  fontFamily: _nunitoSans,
);
