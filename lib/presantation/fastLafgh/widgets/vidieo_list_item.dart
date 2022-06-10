import 'package:flutter/material.dart';

class Vidieolistitem extends StatelessWidget {
  const Vidieolistitem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //---leftside---//

                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off,size: 30,),
                  ),
                ),

                //----rightside---//
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://igimages.gumlet.io/tamil/home/vikram-kamal-vjs-10752021m.jpg?w=376&dpr=2.6",),
                      ),
                    ),
                    VideoActiobswidget(
                        icone: Icons.emoji_emotions, title: 'LOL'),
                    VideoActiobswidget(icone: Icons.add, title: 'My List'),
                    VideoActiobswidget(icone: Icons.share, title: 'Share'),
                    VideoActiobswidget(icone: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActiobswidget extends StatelessWidget {
  const VideoActiobswidget({
    Key? key,
    required this.icone,
    required this.title,
  }) : super(key: key);
  final IconData icone;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icone,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
