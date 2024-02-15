import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/web_servise/SurahModel.dart';
import 'package:quran_app/web_servise/Web_Servise.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit(this.apiService) : super(SurahInitial());

  final ApiService apiService;
  Future<void> getSurah() async {
    emit(SurahLoading());

    try {
      var result = await apiService.get();
      emit(SurahSuccess(const SurahModel()));
    } on Exception catch (e) {
      emit(SurahFaliure('${e}'));
    }
  }
}
