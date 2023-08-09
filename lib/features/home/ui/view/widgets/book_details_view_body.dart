// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookshelf/features/home/ui/view/widgets/build_new_section_title.dart';

import 'build_book_info_section.dart';
import 'build_description_section.dart';
import 'build_feedback_section.dart';
import 'build_lang_published_pages_book_info.dart';
import 'build_reading_listen_button.dart';
import 'build_similer_book_listview.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BooksInfoSection(
                size: size,
              ),
              const BuildLangPublishedPagesBooksInfo(),
              const BuildDescriptionSection(),
              const BuildReadingListenButton(),
              const BuildNewSectionTitle(
                title: "Feedback",
                seeAll: false,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BuildFeedBackSection(),
        ),
        SliverToBoxAdapter(
          child: BuildSimilerBooksListView(
            size: size,
          ),
        )
      ],
    );
  }
}
