part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const AppState._();
  const factory AppState.initial() = _Initial;

  const factory AppState.themeModeChange({required bool isDark}) =
      ThemeModeChange;
      
}
