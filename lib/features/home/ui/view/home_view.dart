import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
