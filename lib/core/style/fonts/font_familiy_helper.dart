import 'package:rovix/core/services/shared_pref/pref_key.dart';
import 'package:rovix/core/services/shared_pref/shared_pref.dart';

class FontFamiliyHelper {
  static final String cairoArbic = 'Cairo';

  static final String poppinsEnglish = 'Poppins';

  static String getLocalized() {
    final currentLanguage = SharedPref().getString(key: PrefKey.language);
    if (currentLanguage == 'ar') {
      return cairoArbic;
    } else {
      return poppinsEnglish;
    }
  }
}
