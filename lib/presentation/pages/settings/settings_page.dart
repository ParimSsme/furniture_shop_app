import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';
import 'package:furniture_shop_app/presentation/pages/settings/widgets/settings_section_header.dart';
import 'package:furniture_shop_app/presentation/pages/settings/widgets/settings_switch_tile.dart';
import 'package:furniture_shop_app/presentation/pages/settings/widgets/settings_tile.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Setting",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        physics: const BouncingScrollPhysics(),
        children: [
          SettingsSectionHeader(
            title: 'Personal Information',
            onEditClick: () {},
          ),
          const SettingsTile(
            title: "Name",
            value: 'Bruno Pham',
          ),
          const SizedBox(height: 15),
          const SettingsTile(
            title: "Email",
            value: 'bruno203@gmail.com',
          ),
          const SizedBox(height: 25),
          SettingsSectionHeader(
            title: 'Password',
            onEditClick: () {},
          ),
          const SettingsTile(
            title: "Password",
            value: "*************",
          ),
          const SizedBox(height: 25),
          Text(
            "Notifications",
            style: kGreyNunitoSmallTitleStyle,
          ),
          const SizedBox(height: 10),
          SettingsSwitchTile(
            label: "Sales",
            onChanged: (val) {},
            value: true,
          ),
          const SizedBox(height: 10),
          SettingsSwitchTile(
            label: "New arrivals",
            onChanged: (val) {},
            value: false,
          ),
          const SizedBox(height: 10),
          SettingsSwitchTile(
            label: "Delivery status changes",
            onChanged: (val) {},
            value: false,
          ),
          const SizedBox(height: 25),
          Text(
            "Help Center",
            style: kGreyNunitoSmallTitleStyle,
          ),
          const SizedBox(height: 10),
          AppCard(
            child: ListTile(
              title: Text(
                'FAQ',
                style: kBlackNunitoSmallTitleStyle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
