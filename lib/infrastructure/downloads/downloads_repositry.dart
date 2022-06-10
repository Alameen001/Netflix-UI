import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/downloads/i_dwonload_reppo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsReppo)
class DownloadRepository implements IDownloadsReppo {
  @override
  Future<Either<Mainfailures, List<Downloads>>> getdownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('response is true');
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return Left(
          Mainfailures.serverfailure(),
        );
      }
    } catch (e) {
       print('im also printing');
      log(e.toString());
      return Left(
        Mainfailures.clientFailure(),
      );
    }
  }
}
