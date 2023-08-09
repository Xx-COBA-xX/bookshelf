import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/widgets/custom_button.dart';

class BuildReadingListenButton extends StatelessWidget {
  const BuildReadingListenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16 , bottom: 32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              btnText: "Reading",
              onPressed: () {},
            ),
          ),
          Container(
            height: 35,
            width: 1,
            decoration: const BoxDecoration(
              color: white
            ),
          ),

          Expanded(
            child: CustomButton(
              btnText: "Listen",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
