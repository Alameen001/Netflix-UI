import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/widgets/main_card.dart';
import 'package:netflix_clone/presantation/widgets/main_title_widget.dart';

class mainTitleCard extends StatelessWidget {
  const mainTitleCard({
    Key? key,required this.title,
  }) : super(key: key);
  final  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return maincard();
            }),
          ),
        ),
      ],
    );
  }
}
