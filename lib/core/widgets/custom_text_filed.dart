import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../utils/color.dart';
import '../utils/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.autovalidateMode,
      required this.label,
      required this.icon,
      this.isPassword = false,
      required this.hintText,
      required this.inputType,
      this.onSaved,
      this.validator});
  final AutovalidateMode autovalidateMode;
  final String label;
  final IconData icon;
  final bool isPassword;
  final String hintText;
  final TextInputType inputType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Style.textStyle16,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: showPassword,
          keyboardType: widget.inputType,
          onSaved: widget.onSaved,
          validator: widget.validator,
          autovalidateMode: widget.autovalidateMode,
          decoration: InputDecoration(
            border: myBorder(),
            focusedBorder: myBorder(),
            enabledBorder: myBorder(),
            disabledBorder: myBorder(),
            filled: true,
            fillColor: kFiledColor,
            hintText: widget.hintText,
            hintStyle: Style.textStyle14.copyWith(color: Colors.black38),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      showPassword
                          ? CupertinoIcons.eye
                          : CupertinoIcons.eye_slash,
                      color: kPrimaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  )
                : null,
            prefixIcon: Icon(
              widget.icon,
              color: kPrimaryColor,
            ),
          ),
          style: Style.textStyle16,
        ),
      ],
    );
  }
}
