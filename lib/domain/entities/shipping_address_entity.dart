import 'package:equatable/equatable.dart';

class ShippingAddressEntity extends Equatable {
  final int id;
  final String fullName;
  final String address;
  final String zipCode;
  final String country;
  final String city;
  final String district;
  final bool isSelected;

  const ShippingAddressEntity({
    this.id = -1,
    this.fullName = '',
    this.address = '',
    this.zipCode = '',
    this.country = '',
    this.city = '',
    this.district = '',
    this.isSelected = false,
  });

  @override
  List<Object?> get props => [
    id,
    fullName,
    address,
    zipCode,
    country,
    city,
    district,
    isSelected,
  ];
}