import 'package:bookshelf/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color.dart';

class BuildProfileImage extends StatelessWidget {
  const BuildProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(Assets.personImage),
        ),
        Positioned(
          bottom: 5,
          right: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              FontAwesomeIcons.pen,
              color: white,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
