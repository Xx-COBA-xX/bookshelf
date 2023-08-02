// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field
import 'package:bookshelf/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/constant.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:bookshelf/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import 'build_logo.dart';
import 'build_signin_view_form.dart';
import 'build_title_and_subtitle.dart';
import 'build_userqustion_about_account.dart';
import 'custom_social_midai_buttons.dart';
import 'custom_text_button.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _key = GlobalKey();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              title: "Let’s sign you in.",
              supTitle: "Welcome back, You’ve been missed.",
            ),
            mainSize,
            SingInViewForm(
              autovalidateMode: autovalidateMode,
              myKey: _key,
              emailOnSaved: (value) {
                email = value!;
              },
              passwordOnSaved: (value) {
                password = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextButton(
              style: Style.textStyle16,
              text: "Forgot Password ?",
            ),
            mainSize,
            CustomButton(
              btnText: "Sign In",
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _key.currentState!.save();
                  GoRouter.of(context)
                      .pushReplacement(AppRouter.kHomeViewRoute);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
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
            BuildUserQusitonaboutAccount(
              onTap: () {
                GoRouter.of(context)
                    .pushReplacement(AppRouter.kSignupViewRoute);
              },
              qustion: "don't have an account ?",
              textButton: ' Register now',
            ),
          ],
        ),
      ),
    );
  }
}
