import 'package:flutter/material.dart';

class maincard extends StatelessWidget {
  const maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
       height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg",)
        )
      ),
    );
  }
}