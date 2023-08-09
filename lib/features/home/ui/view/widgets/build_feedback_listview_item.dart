import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BuildFeedBackListViewItem extends StatelessWidget {
  const BuildFeedBackListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          elevation: 0,
          color: white,
          child: Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(Assets.personImage),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ali Habeeb",
                        style: Style.textStyle16,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "This Book is mazing and responsible for the creation of",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Style.textStyle13,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
