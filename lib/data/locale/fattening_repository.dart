import 'package:shared_preferences/shared_preferences.dart';

class FatteningRepository {
  final String tutorialHomeKey = 'tutorialHomeKey';

  Future<bool> isTutorial() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(tutorialHomeKey) ?? false;
  }

  Future<bool> removeTutorial() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setBool(tutorialHomeKey, true);
  }
}
