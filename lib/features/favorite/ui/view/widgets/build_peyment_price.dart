import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildPeymentPrice extends StatelessWidget {
  const BuildPeymentPrice({
    Key? key,
    required this.size,
    required this.title,
    required this.price,
  }) : super(key: key);

  final Size size;
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Style.textStyle20.copyWith(fontSize: size.height / 40),
        ),
        Text(
          '\$$price',
          style: Style.textStyle20.copyWith(fontSize: size.height / 40),
        ),
      ],
    );
  }
}
