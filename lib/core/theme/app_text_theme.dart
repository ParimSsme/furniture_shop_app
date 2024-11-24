import 'package:flutter/material.dart';
import 'app_colors.dart';

const _nunitoSans = 'Nunito Sans';
const _gelasio = 'Gelasio';
const _merriweather = 'Merriweather';

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
  color: AppColors.textSecondary,
);

const _captionTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimary,
);

const _buttonStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

const kTextButtonStyle = TextStyle(
  fontFamily: _gelasio,
  fontSize: 18,
  color: AppColors.textOnPrimary,
);

final kContainedButtonStyle = _buttonStyle.copyWith(
  color: AppColors.textOnPrimary,
  fontFamily: _gelasio,
);

final kButtonStyle = _buttonStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _gelasio,
);

final kBlackGelasioLargeTitleStyle = _largeTitleStyle.copyWith(
  fontFamily: _gelasio,
  color: AppColors.textSecondary,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

final kBlackNunitoLargeTitleStyle = _largeTitleStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _nunitoSans,
);

final kBlackNunitoMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _nunitoSans,
);

final kGreyGelasioMediumTitleStyle = _mediumTitleStyle.copyWith(
  fontFamily: _gelasio,
  color: AppColors.graniteGrey,
  fontSize: 24,
  letterSpacing: 0.5,
  fontWeight: FontWeight.w600,
);

final kBlackGelasioMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _gelasio,
);

final kBlackMerriweatherMediumTitleStyle = _mediumTitleStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _merriweather,
);

final kBlackMerriweatherSmallTitleStyle = _smallTitleStyle.copyWith(
  color: AppColors.textPrimary,
  fontFamily: _merriweather,
);

final kGrayNunitoHeight2TextStyle = _bodyTextStyle.copyWith(
  fontFamily: _nunitoSans,
  color: AppColors.grey,
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

final kGreyNunitoSmallTitleStyle = _smallTitleStyle.copyWith(
  fontFamily: _nunitoSans,
  color: AppColors.grey,
);

final kGreyNunitoMediumTitleStyle = _mediumTitleStyle.copyWith(
  fontFamily: _nunitoSans,
  color: AppColors.grey,
);

final kCaptionNunitoTextStyle = _captionTextStyle.copyWith(
  fontFamily: _nunitoSans,
);
