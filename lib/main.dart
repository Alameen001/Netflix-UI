import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/di/injectable.dart';

import 'package:netflix_clone/presantation/main_page/screen_main_page.dart';

import 'application/downloads/downloads_bloc.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          backgroundColor: backgroundcolor,
          scaffoldBackgroundColor: backgroundcolor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
          primarySwatch: Colors.blue,
        ),
        home: Sceenmainpage(),
      ),
    );
  }
}
