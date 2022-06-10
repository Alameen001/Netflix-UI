import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class Mainfailures with _$Mainfailures{
  const factory Mainfailures.clientFailure() = _cliientFailure;
  const factory Mainfailures.serverfailure() = _serverfailure;
  
}