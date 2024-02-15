part of 'surah_cubit.dart';

@immutable
sealed class SurahState {}

final class SurahInitial extends SurahState {}

final class SurahLoading extends SurahState {}

final class SurahSuccess extends SurahState {
  final SurahModel surahs;

  SurahSuccess(this.surahs);
}

final class SurahFaliure extends SurahState {
  final String errMessage;

  SurahFaliure(this.errMessage);
}
