import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum {
  dev,
  prod,
}

class EnvVariables {
  EnvVariables._internal();
  static final _instance = EnvVariables._internal();

  static String _envType = '';

  factory EnvVariables() {
    return _instance;
  }

  static Future<void> loadEnv({required EnvTypeEnum type}) async {
    switch (type) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');

      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }

    _envType = dotenv.get('ENV_TYPE');
  }

  bool get depugMode => _envType == 'dev';
}
