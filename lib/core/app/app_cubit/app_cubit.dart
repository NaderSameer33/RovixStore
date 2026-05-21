import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rovix/core/services/shared_pref/pref_key.dart';
import 'package:rovix/core/services/shared_pref/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());

  bool isDark = true;

  String lang = 'en';

  Future<void> changeTheme({bool? sharedPref}) async {
    if (sharedPref != null) {
      isDark = sharedPref;
      emit(AppState.themeModeChange(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref()
          .setBool(key: PrefKey.themeMode, value: isDark)
          .then(
            (_) => emit(
              AppState.themeModeChange(isDark: isDark),
            ),
          );
    }
  }

  Future<void> changeLanguage({String? sharedLanguage}) async {
    if (sharedLanguage != null) {
      lang = sharedLanguage;
      emit(AppState.languageChangeState(locale: Locale(lang)));
    } else {
      // toggle if lan is en covert to ar and opposite
      lang = lang == 'en' ? 'ar' : 'en';
      await SharedPref()
          .setString(key: PrefKey.language, value: lang)
          .then(
            (_) => emit(
              AppState.languageChangeState(locale: Locale(lang)),
            ),
          );
    }
  }
}
