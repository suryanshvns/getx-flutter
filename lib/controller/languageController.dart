import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  changeLocal(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);
  }
}
