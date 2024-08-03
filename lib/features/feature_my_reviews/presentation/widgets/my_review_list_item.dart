import 'package:flutter/material.dart';

class MyReviewListItem extends StatelessWidget {
  const MyReviewListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Row(
            children: [
              Text('Coffee Table')
            ],
          )
        ],
      ),
    );
  }
}
