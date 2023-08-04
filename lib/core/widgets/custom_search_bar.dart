import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant.dart';
import '../utils/color.dart';
import '../utils/styles.dart';

class BuildCustomSearchBar extends StatelessWidget {
  const BuildCustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kFiledColor,
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: myBorder(),
              enabledBorder: myBorder(),
              focusedBorder: myBorder(),
              disabledBorder: myBorder(),
              prefixIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 19,
                color: kAuthorTextColor,
              ),
              hintText: "Search...",
              hintStyle: Style.textStyle15
                  .copyWith(color: kAuthorTextColor, fontSize: 15)),
          style: Style.textStyle16
              .copyWith(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
