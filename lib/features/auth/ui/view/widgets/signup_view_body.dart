// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookshelf/core/utils/app_router.dart';
import 'package:bookshelf/features/auth/ui/view/widgets/build_userqustion_about_account.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/constant.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:bookshelf/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import 'build_logo.dart';
import 'build_signup_view_form.dart';
import 'build_title_and_subtitle.dart';
import 'custom_social_midai_buttons.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _key = GlobalKey();

  String username = "";
  String password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
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
            SingUpViewForm(
              myKey: _key,
              autovalidateMode: autovalidateMode,
              emailOnSaved: (value) {
                email = value!;
              },
              passwordOnSaved: (value) {
                password = value!;
              },
            ),
            mainSize,
            CustomButton(
                btnText: "Sign Up",
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    _key.currentState!.save();
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.kHomeViewRoute);
                  }
                }),
            mainSize,
            const Text(
              'or continue with ',
              style: Style.textStyle16,
              textAlign: TextAlign.center,
            ),
            mainSize,
            const CustomSocialMidaButton(),
            mainSize,
            BuildUserQusitonaboutAccount(
              qustion: "You have an account ?",
              textButton: " Sign In",
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouter.kSigninViewRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
