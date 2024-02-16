import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/web_servise/SurahModel.dart';
import 'package:quran_app/web_servise/Web_Servise.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit() : super(SurahInitial());

  getSurah() async {
    final ApiService apiService = ApiService();
    emit(SurahLoading());

    try {
      List<dynamic> result = await apiService.get();
      emit(SurahSuccess(const SurahModel()));
      return result;
    } on Exception catch (e) {
      emit(SurahFaliure('$e'));
    }
  }
}
