import 'package:shared_preferences/shared_preferences.dart';

class FuenteStorage {
  Future<void> guardarNumeroFuente(int? number) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('Fuente', number!);
  }

  Future<int?> cargarNumeroFuente() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('Fuente');
  }
}
