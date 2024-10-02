import 'package:shared_preferences/shared_preferences.dart';

class OnboardingVisto {
  Future<void> saveOnboarding(int? number) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('visto', number!);
  }

  Future<int?> cargarOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('visto');
  }
}
