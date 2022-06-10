import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/constant.dart';
import 'package:netflix_clone/presantation/widgets/appbar_widget.dart';

class screendownload extends StatelessWidget {
  screendownload({Key? key}) : super(key: key);

  final _widgetList = [
    _smartDownlods(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        child: AppbarWidget(title: "Downloads"),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(
                height: 25,
              ),
          itemCount: _widgetList.length),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  // final List imageList = [
  //   "https://www.nowrunning.com/content/movie/2018/minna-23659/Stills/minnal-murali_202189.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0gItetmAakdNdNIScpSmv8wryV_PWxZ4m_Q&usqp=CAU",
  //   "https://igimages.gumlet.io/tamil/home/vikram-kamal-vjs-10752021m.jpg?w=376&dpr=2.6",
  // ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
       BlocProvider.of<DownloadsBloc>(context).add(DownloadsEvent.getDownloadsImage());
     });
    final Size size = MediaQuery.of(context).size;
    

 
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
        khight,
        Text(
          'We will Download a personalised selection \nof nmovie  and shows for you, So there is\n always somthing to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        khight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return state.isLoading
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: size.width,
                    height: size.height * 0.6,
                    child: state.isLoading
                        ? Center(child: const CircularProgressIndicator())
                        : Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: size.width * 0.42,
                                backgroundColor: Colors.grey.withOpacity(0.8),
                              ),
                              DwonloadsImageWidget(
                                imageList:
                                    '$ImageAppendUrl${state.downloads[0].posterPath}',
                                angle: 25,
                                size: Size(
                                  size.width * 0.35,
                                  size.width * 0.55,
                                ),
                                margin: EdgeInsets.only(left: 170, top: 50),
                              ),
                              DwonloadsImageWidget(
                                angle: -25,
                                imageList:
                                    '$ImageAppendUrl${state.downloads[1].posterPath}',
                                margin: EdgeInsets.only(right: 170, top: 50),
                                size: Size(
                                  size.width * 0.35,
                                  size.width * 0.55,
                                ),
                              ),
                              DwonloadsImageWidget(
                                imageList:
                                    '$ImageAppendUrl${state.downloads[2].posterPath}',
                                margin: EdgeInsets.only(bottom: 35, top: 50),
                                size: Size(
                                  size.width * 0.46,
                                  size.width * 0.67,
                                ),
                              ),
                            ],
                          ),
                  );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        khight,
        MaterialButton(
          color: Colors.white,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class _smartDownlods extends StatelessWidget {
  const _smartDownlods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DwonloadsImageWidget extends StatelessWidget {
  const DwonloadsImageWidget({
    Key? key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
