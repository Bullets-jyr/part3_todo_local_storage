import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {

  AppSharedPreference._();

  static AppSharedPreference instance = AppSharedPreference._();

  static const keyCount = 'count';
  static const keyLaunchCount = 'launch_count';

  late SharedPreferences _preferences;

  static init() async {
    instance._preferences = await SharedPreferences.getInstance();
  }

  static void setCount(int count) {
    instance._preferences.setInt(keyCount, count);
  }

  /// null일 경우에는 0 디폴트값 반환
  static int getCount() {
    return instance._preferences.getInt(keyCount) ?? 0;
  }

  static void setLaunchCount(int count) {
    instance._preferences.setInt('launch_count', count);
  }

  /// null일 경우에는 0 디폴트값 반환
  static int getLaunchCount() {
    return instance._preferences.getInt('launch_count') ?? 0;
  }
}