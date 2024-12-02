import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../domain/entities/notification_entity.dart';

class NotificationListItem extends StatelessWidget {
  final NotificationEntity entity;
  const NotificationListItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color:
            entity.isNew || entity.isHot ? Colors.grey.shade300 : Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
      child: Row(
        children: [
          if (entity.image.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                entity.image,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(width: 10),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entity.title,
                      style: kBlackNunitoSmallTitleStyle.copyWith(
                        fontSize: entity.image.isEmpty ? 16 :13,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      entity.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: kBodyNunitoTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                if (entity.isNew || entity.isHot)
                  Text(
                    entity.isHot ? 'HOT!' : "New",
                    style: kBlackNunitoSmallTitleStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: entity.isHot ? AppColors.error : AppColors.success,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
