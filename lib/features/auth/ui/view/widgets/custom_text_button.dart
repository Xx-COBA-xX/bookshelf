// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.style,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final TextStyle style;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: Text(
          text,
          style: Style.textStyle16,
        ),
      ),
    );
  }
}
