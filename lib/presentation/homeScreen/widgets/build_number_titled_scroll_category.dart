import 'package:flutter/material.dart';

import '../../../widgets/build_text_title.dart';
import 'numbered_cards.dart';
class BuildNumberTitledCategoryScrollView extends StatelessWidget {
  const BuildNumberTitledCategoryScrollView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const TextTitle(title: "Top 10 Movies In India"),
        LimitedBox(
          maxHeight: 200,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,

              itemBuilder: (ctx,index)=> NumberedCards(index: index,)),
        )
      ],
    );
  }
}
