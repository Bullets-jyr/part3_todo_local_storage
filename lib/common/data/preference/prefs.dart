import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';

import 'item/preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final launchCount = PreferenceItem<int>('launchCount', 0);
  static final count = NullablePreferenceItem<bool>('count');
}

// main() {
//   Prefs.launchCount.set(200);
//   final launchCount = Prefs.launchCount.get();
// }
