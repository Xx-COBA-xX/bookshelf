// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';

class BuildProfileSection extends StatelessWidget {
  const BuildProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildProfileSectionItem(
            icon: CupertinoIcons.person,
            title: 'Privacy',
            onPressed: () {},
          ),
          BuildProfileSectionItem(
            icon: Icons.history,
            title: 'Purchase History',
            onPressed: () {},
          ),
          BuildProfileSectionItem(
            icon: Icons.help_outline,
            title: 'Help & Support',
            onPressed: () {},
          ),
          BuildProfileSectionItem(
            icon: Icons.settings,
            title: 'Settings',
            onPressed: () {},
          ),
          BuildProfileSectionItem(
            icon: CupertinoIcons.person_2,
            title: 'Invite a Friend',
            onPressed: () {},
          ),
          BuildProfileSectionItem(
            icon: Icons.logout_outlined,
            title: 'Privacy',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class BuildProfileSectionItem extends StatelessWidget {
  const BuildProfileSectionItem({
    Key? key,
    this.onPressed,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final void Function()? onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            children: [
              Icon(
                icon,
                size: 25,
                color: kTextColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: Style.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: kTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
