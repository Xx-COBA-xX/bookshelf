import 'package:flutter/material.dart';

import 'build_book_image.dart';
import 'build_book_info.dart';

class BooksInfoSection extends StatelessWidget {
  const BooksInfoSection({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
        width: size.width < 450 ? size.width : 360,
        height: size.height * .3,
        child: Row(
          children: [
            SizedBox(
              width: size.width < 450 ? size.width / 2.5 : 180,
              child: const BuildBookImage(),
            ),
            const BuildBookInfo()
          ],
        ),
      ),
    );
  }
}

