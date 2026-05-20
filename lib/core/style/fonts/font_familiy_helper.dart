class FontFamiliyHelper {
  static final String cairoArbic = 'Cairo';

  static final String poppinsEnglish = 'Poppins';

  static String getLocalized() {
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArbic;
    } else {
      return poppinsEnglish;
    }
  }
}
