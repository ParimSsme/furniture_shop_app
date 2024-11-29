import 'package:equatable/equatable.dart';

class NotificationEntity extends Equatable {
  final int id;
  final String image;
  final String title;
  final String description;
  final bool isNew;
  final bool isHot;

  const NotificationEntity({
    this.id = -1,
    this.image = '',
    this.title = '',
    this.description = '',
    this.isNew = false,
    this.isHot = false,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    title,
    description,
    isNew,
    isHot,
  ];
}