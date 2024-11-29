import 'package:furniture_shop_app/domain/entities/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  const NotificationModel({
    super.id,
    super.image,
    super.title,
    super.description,
    super.isNew,
    super.isHot,
  });
}