import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'build_profile_sction.dart';
import 'build_username_and_email.dart';
import 'proflie_image.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.height,
      margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BuildProfileImage(),
          const BuildUsernameAndEmail(),
          SizedBox(
            width: 250,
            child: CustomButton(
              btnText: "Edit Profile",
              onPressed: (){},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const BuildProfileSection()
        ],
      ),
    );
  }
}