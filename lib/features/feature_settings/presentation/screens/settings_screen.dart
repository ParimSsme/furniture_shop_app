import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_shop_app/common/utils/extensions/widget.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Personal Information', style: kBodyNunitoTextStyle,),
                Icon(Icons.edit)
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Name', style: kBodyNunitoTextStyle),
                    Text('Bruno Pham', style: kBlackNunitoSmallTitleStyle),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Email', style: kBodyNunitoTextStyle),
                    Text('Bruno Pham', style: kBlackNunitoSmallTitleStyle),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Password', style: kBodyNunitoTextStyle,),
                Icon(Icons.edit)
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Name', style: kBodyNunitoTextStyle),
                    Text('**********', style: kBlackNunitoSmallTitleStyle),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text('Notifications', style: kBodyNunitoTextStyle),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sales'),
                    Switch(value: true, onChanged: (isTrue){})
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New arrivals'),
                    Switch(value: false, onChanged: (isTrue){})
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery status changes'),
                    Switch(value: false, onChanged: (isTrue){})
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text('Help Center', style: kBodyNunitoTextStyle),
            GestureDetector(
              onTap: (){

              },
              child: const Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('FAQ'),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
