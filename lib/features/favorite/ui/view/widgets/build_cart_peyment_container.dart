import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'build_peyment_price.dart';

class BuildCartPaymentContainer extends StatelessWidget {
  const BuildCartPaymentContainer({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(16),
      width: size.width,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.3),
            offset: const Offset(0, 0),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          BuildPeymentPrice(
            size: size,
            title: 'Items price',
            price: 20,
          ),
          const SizedBox(
            height: 8,
          ),
          BuildPeymentPrice(size: size, title: "Tax", price: 5),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: Style.textStyle20
                  ..copyWith(
                    fontSize: size.height / 30,
                    color: kTextColor,
                  ),
              ),
              Text(
                '\$25',
                style: Style.textStyle20
                  ..copyWith(
                    fontSize: size.height / 30,
                    color: kTextColor,
                  ),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          CustomButton(btnText: "Payment Now", onPressed: () {}),
        ],
      ),
    );
  }
}
