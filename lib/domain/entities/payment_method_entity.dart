import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class PaymentMethodEntity extends Equatable {
  final int id;
  final String image;
  final String cardNumberLastFourDigits;
  final String cardHolderName;
  final String expiryDate;
  final bool isSelected;

  const PaymentMethodEntity({
    this.id = -1,
    this.image = '',
    this.cardNumberLastFourDigits = '',
    this.cardHolderName = '',
    this.expiryDate = '',
    this.isSelected = false,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    cardNumberLastFourDigits,
    cardHolderName,
    expiryDate,
    isSelected,
  ];
}