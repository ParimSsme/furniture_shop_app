import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/my_review_list_item.dart';

class MyReviewsScreen extends StatelessWidget {
  const MyReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (_, index){
            return const MyReviewListItem();
          },
          separatorBuilder: (_, __) {
            return const SizedBox(height: 10);
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
