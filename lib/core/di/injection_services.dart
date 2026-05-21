import 'package:get_it/get_it.dart';
import 'package:rovix/core/app/app_cubit/app_cubit.dart';

final sl = GetIt.instance;

Future<void> setUp() async {
  sl.registerSingleton(AppCubit());
}
