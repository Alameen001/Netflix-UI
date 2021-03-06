import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class Numbercardwidget extends StatelessWidget {
  const Numbercardwidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30 ,
              height: 200,
            ),
            Container(
              width: 150,
              // height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -25,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 10.0,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontSize: 130,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
