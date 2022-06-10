import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_dwonload_reppo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsReppo _downloadsReppo;
  DownloadsBloc(this._downloadsReppo) : super(DownloadsState.inital()) {
    on<_Getdownloadsimage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadFailureOrsuccessOption: none(),
        ),
      );
      final Either<Mainfailures, List<Downloads>> dwonloadsOption =
          await _downloadsReppo.getdownloadsImages();
      log(dwonloadsOption.toString());
      emit(
        dwonloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadFailureOrsuccessOption: some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadFailureOrsuccessOption: some(Right(success))),
        ),
      );
    });
  }
}
