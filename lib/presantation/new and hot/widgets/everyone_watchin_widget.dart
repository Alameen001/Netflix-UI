import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/home/custom_button_widget.dart';
import 'package:netflix_clone/presantation/widgets/video_widget.dart';

class everyonesWatching extends StatelessWidget {
  const everyonesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        const Text(
          'Friends',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        khight,
        const Text(
          'Jake Sully lives with his newfound family formed on the planet of Pandora. Once a familiar threat returns ',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(
          height: 50,
        ),
        const vidieovidgets(),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            custombuttonwidget(
              icon: Icons.share,
              title: 'Share  ',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
            custombuttonwidget(
              icon: Icons.add,
              title: 'Add Button',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
            custombuttonwidget(
              icon: Icons.play_arrow,
              title: 'Paly',
              iconSize: 24,
              textSize: 16,
            ),
            kwidth,
          ],
        ),
      ],
    );
  }
}
