import 'package:flutter/cupertino.dart';

import '../utils/color.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.btnText,
  }) : super(key: key);
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            btnText,
            style: Style.textStyle24.copyWith(
              color: white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
