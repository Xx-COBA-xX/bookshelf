import 'package:bookshelf/core/utils/assets.dart';
import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:bookshelf/core/widgets/custom_button.dart';
import 'package:bookshelf/features/profile/ui/view/widgets/build_profile_sction.dart';
import 'package:flutter/material.dart';

import 'widgets/proflie_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: ProfileViewBody(),
    ));
  }
}

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

class BuildUsernameAndEmail extends StatelessWidget {
  const BuildUsernameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "7aiDER Al-Tmimy.",
          style: Style.textStyle20.copyWith(
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "coba@gmail.com",
          style: Style.textStyle15.copyWith(
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
