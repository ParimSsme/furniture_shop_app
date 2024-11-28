import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class PaymentMethodEntity extends Equatable {
  final int id;
  final String image;
  final Color backgroundColor;
  final int cardNumberLastFourDigits;
  final String cardHolderName;
  final String expiryDate;
  final bool isSelected;

  const PaymentMethodEntity({
    this.id = -1,
    this.image = '',
    this.backgroundColor = const Color(0xff222222),
    this.cardNumberLastFourDigits = 0,
    this.cardHolderName = '',
    this.expiryDate = '',
    this.isSelected = false,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    backgroundColor,
    cardNumberLastFourDigits,
    cardHolderName,
    expiryDate,
    isSelected,
  ];
}