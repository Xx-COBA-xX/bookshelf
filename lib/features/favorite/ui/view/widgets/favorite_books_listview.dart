import 'package:bookshelf/core/utils/color.dart';
import 'package:bookshelf/core/widgets/vertical_books_listview_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FivoratBooksListView extends StatelessWidget {
  const FivoratBooksListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          child: Stack(
            children: [
              Positioned(
                  top: 5,
                  right: 5,
                  child: CupertinoButton(
                    child: Icon(
                      FontAwesomeIcons.xmark,
                      color: kTextColor.withOpacity(0.7),
                    ),
                    onPressed: () {},
                  )),
              VerticalBooksListViewItem(size: size),
            ],
          ),
        );
      },
    );
  }
}
