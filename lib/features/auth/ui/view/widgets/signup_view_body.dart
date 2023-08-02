// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookshelf/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookshelf/constant.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:bookshelf/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_text_filed.dart';
import 'build_logo.dart';
import 'build_title_and_subtitle.dart';
import 'custom_social_midai_buttons.dart';
import 'custom_text_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
          mainSize,
          const BuildTitleAndSubTitle(
            title: "Create an account.",
            supTitle: "Welcome to Bookshelf Library.",
          ),
          mainSize,
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  autovalidateMode: autovalidateMode,
                  label: "Username",
                  icon: FontAwesomeIcons.user,
                  hintText: "Username...",
                  inputType: TextInputType.name,
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
            ),
          ),
          mainSize,
          const CustomButton(
            btnText: "Sign Up",
          ),
          mainSize,
          const Text(
            'or continue with ',
            style: Style.textStyle16,
            textAlign: TextAlign.center,
          ),
          mainSize,
          const CustomSocialMidaButton(),
          mainSize,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You have an account ?",
                style: Style.textStyle16,
              ),
              CustomTextButton(
                text: ' Sign in',
                style: Style.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacement(AppRouter.kSigninViewRoute);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
