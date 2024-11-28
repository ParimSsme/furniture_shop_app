import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/presentation/pages/my_reviews/widgets/my_review_list_item.dart';
import 'package:get/get.dart';

class MyReviewsPage extends StatelessWidget {
  const MyReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        centerTitle: true,
        title: const Text("My reviews"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIconAssets.search),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const MyReviewListItem();
        },
        separatorBuilder: (_, __) => const SizedBox(height: 20),
      ),
    );
  }
}
