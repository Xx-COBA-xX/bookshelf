import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/widgets/custom_text_filed.dart';
import '../build_logo.dart';
import '../build_title_and_subtitle.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: (size.height * .05) / 1.5,
          ),
          const BuildLogo(),
          const SizedBox(
            height: 32,
          ),
          const BuildTitleAndSubTitle(
            title: "Let’s sign you in.",
            supTitle: "Welcome back, You’ve been missed.",
          ),
          const SizedBox(
            height: 32,
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                autovalidateMode: autovalidateMode,
                label: "Email",
                icon: FontAwesomeIcons.envelope,
                hintText: "Email address...",
                inputType: TextInputType.emailAddress,
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
              ),
            ],
          ))
        ],
      ),
    );
  }
}
