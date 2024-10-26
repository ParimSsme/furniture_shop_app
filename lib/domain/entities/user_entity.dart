import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String name;
  final String email;

  const UserEntity({
    this.name = '',
    this.email = '',
  });

  @override
  List<Object?> get props => [
    name,
    email,
  ];
}