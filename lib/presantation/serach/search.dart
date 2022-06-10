import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_ideal.dart';
import 'package:netflix_clone/presantation/serach/widgets/search_resul.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.5),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              khight,
              // const Text(
              //   'Top Searches',
              //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              // ),
              // khight,
            // Expanded(child: const  Searchidelwidget()),
            Expanded(child: SearchReasultwidget())
            ],
          ),
        ),
      ),
    );
  }
}
