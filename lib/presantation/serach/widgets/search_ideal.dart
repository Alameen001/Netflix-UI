import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/serach/widgets/titile.dart';

const imageurl =
    "https://i.pinimg.com/originals/29/03/6c/29036c01210cf138d94c48db17acb94a.jpg";

class Searchidelwidget extends StatelessWidget {
  const Searchidelwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Searchtexttitle(title: 'Top Searches'),
        khight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopsearchTile(),
              separatorBuilder: (context, index) => khight,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopsearchTile extends StatelessWidget {
  const TopsearchTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 68,
          width: screenwidth * 0.34 ,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.black,
            child: Center(
              child: Icon(CupertinoIcons.play_fill,color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
