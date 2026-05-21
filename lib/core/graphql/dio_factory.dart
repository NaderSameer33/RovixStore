import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rovix/core/services/shared_pref/pref_key.dart';
import 'package:rovix/core/services/shared_pref/shared_pref.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);

    dio ??= Dio();
    dio!
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut
      ..options.headers['Authorization'] =
          'Bearer ${SharedPref().getString(key: PrefKey.accessToken)}';

    addDioIntercptor();

    return dio!;
  }

  static addDioIntercptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
  }
}
