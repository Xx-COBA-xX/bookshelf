import 'package:bookshelf/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingUpViewForm extends StatelessWidget {
  const SingUpViewForm({
    super.key,
    required this.autovalidateMode,
    this.emailOnSaved,
    this.passwordOnSaved,
    required this.myKey, this.nameOnSaved,
  });
  final GlobalKey<FormState> myKey;
  final AutovalidateMode autovalidateMode;
  final void Function(String?)? emailOnSaved;
  final void Function(String?)? passwordOnSaved;
  final void Function(String?)? nameOnSaved;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: myKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            autovalidateMode: autovalidateMode,
            label: "Username",
            icon: FontAwesomeIcons.user,
            hintText: "Username...",
            inputType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "This filed is required";
              } else if (value.length > 20) {
                return "Please enter a valid username ";
              }
              return null;
            },
            onSaved: nameOnSaved,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            autovalidateMode: autovalidateMode,
            label: "Email",
            icon: FontAwesomeIcons.envelope,
            hintText: "Email address...",
            inputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email address is required";
              } else if (!value.contains("@gmail.com") || value.contains(" ")) {
                return "Please enter a valid email address";
              }
              return null;
            },
            onSaved: emailOnSaved,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            autovalidateMode: autovalidateMode,
            label: "password",
            icon: Icons.lock_outline,
            hintText: "Password...",
            inputType: TextInputType.emailAddress,
            isPassword: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password field is required";
              } else if (value.length < 4) {
                return "the passowrd cannot be less than 4 characters";
              } else if (value.length > 40) {
                return "the passowrd cannot be more than 40 characters";
              }
              return null;
            },
            onSaved: passwordOnSaved,
          ),
        ],
      ),
    );
  }
}
