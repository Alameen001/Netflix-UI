import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/serach/widgets/titile.dart';

const imageurl =
    "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg";

class SearchReasultwidget extends StatelessWidget {
  const SearchReasultwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Searchtexttitle(title: 'Movies & TV '),
        khight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1/1.5,

            children: List.generate(20, (index) {
              return SearchresulItem();
            }),
          ),
        )
      ],
    );
  }
}

class SearchresulItem extends StatelessWidget {
  const SearchresulItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageurl),
        ),
      ),
    );
  }
}
