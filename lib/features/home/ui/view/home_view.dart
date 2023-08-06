// ignore_for_file: must_be_immutable

import 'package:bookshelf/constant.dart';
import 'package:bookshelf/features/home/data/models/bottom_nav_bar_model/bottom_nav_bar_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: appViews[currentPage],
        bottomNavigationBar: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(myNavBar.length, (index) {
                return CupertinoButton(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    child: SvgPicture.asset(
                      currentPage == index
                          ? myNavBar[index].activIcon
                          : myNavBar[index].icon,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      currentPage = index;
                    });
                  },
                );
              }),
            )),
      ),
    );
  }
}
