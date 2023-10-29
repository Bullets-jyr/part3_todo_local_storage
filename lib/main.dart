import 'package:easy_localization/easy_localization.dart';
import 'package:fast_app_base/common/data/preference/app_shared_preference.dart';
import 'package:fast_app_base/data/local/local_db.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'common/data/preference/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  await AppSharedPreference.init();

  AppSharedPreference.setCount(0);
  final count = AppSharedPreference.getCount();

  // await LocalDB.init();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App()));
}
