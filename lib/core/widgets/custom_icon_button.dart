import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);
  final void Function()? onPressed;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
