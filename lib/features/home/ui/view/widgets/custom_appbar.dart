import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 32),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [BuildWelcomeMsg(), BuildNotifacionFlag()],
      ),
    );
  }
}

class BuildNotifacionFlag extends StatelessWidget {
  const BuildNotifacionFlag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: const Stack(
        children: [
          Icon(
            FontAwesomeIcons.bell,
            size: 37,
            color: kPrimaryColor,
          ),
          Positioned(
            right: 4,
            top: 3,
            child: CircleAvatar(
              backgroundColor: white,
              radius: 7,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}

class BuildWelcomeMsg extends StatelessWidget {
  const BuildWelcomeMsg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello HAIDER.",
          style: Style.textStyle24.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "What book would you like to read ?",
          style: Style.textStyle16.copyWith(
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
