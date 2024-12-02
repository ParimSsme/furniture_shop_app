import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/presentation/controllers/main/notifications_controller.dart';
import 'package:furniture_shop_app/presentation/pages/main/notifications/widgets/notification_list_item.dart';
import 'package:get/get.dart';

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(AppIconAssets.search),
        ),
        centerTitle: true,
        title: const Text(
          "Notification",
        ),
      ),
      body: ListView.separated(
        itemCount: controller.notifications.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return NotificationListItem(
            entity: controller.notifications[index],
          );
        },
        separatorBuilder: (_, __) => Divider(
          indent: 24,
          endIndent: 24,
          thickness: 1,
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
