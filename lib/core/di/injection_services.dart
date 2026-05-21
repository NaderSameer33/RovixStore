import 'package:get_it/get_it.dart';
import 'package:rovix/core/app/app_cubit/app_cubit.dart';
import 'package:rovix/core/graphql/api_services.dart';
import 'package:rovix/core/graphql/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setUp() async {
  final dio = DioFactory.getDio();
  sl.registerSingleton(AppCubit());
  sl.registerLazySingleton<ApiServices>(
    () => ApiServices(dio),
  );
}
