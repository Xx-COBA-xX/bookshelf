// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 40, left: 16, bottom: 20),
      child: Text(
        title,
        style: Style.textStyle24.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
