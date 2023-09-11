import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class LocalStorage {
  static const levelKey = 'level';

  Future<void> saveLevel(int level) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(levelKey, level);
  }

  Future<int?> getLevel() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(levelKey);
  }
}
