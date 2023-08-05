import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 16, bottom: 16),
      child: Text(
        'Categories',
        style: Style.textStyle24.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
