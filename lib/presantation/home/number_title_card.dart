import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/home/number_card.dart';
import 'package:netflix_clone/presantation/widgets/main_title_widget.dart';

class numbertitlecard extends StatelessWidget {
  const numbertitlecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: 'Top 10 TV Shows In India Today '),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return Numbercardwidget(
                index: index,
              );
            }),
          ),
        ),
      ],
    );
  }
}
