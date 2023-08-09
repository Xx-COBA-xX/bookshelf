import 'package:flutter/material.dart';

import 'build_feedback_listview_item.dart';

class BuildFeedBackSection extends StatelessWidget {
  const BuildFeedBackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:200,
      child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const BuildFeedBackListViewItem();
          }),
    );
  }
}
