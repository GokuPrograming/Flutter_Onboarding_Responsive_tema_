import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/themeSethings.dart';

TemaStorage tema = TemaStorage();

class Fuentesettings {
  static ThemeData fuenteOscura(int numeroTema) {
    // double aa = 2.1;
    if (numeroTema == 1) {
//aplicaria el tema oscuro
      final tema = Themesethings.TemaOscuro();
      return tema.copyWith(
        textTheme: tema.textTheme.copyWith(),
      );
    } else {
      final tema = Themesethings.TemaOscuro();
      return tema.copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Roboto'),
          
        ),
      );
    }
  }

  Future<void> aplicarFuente() async {
    int? numeroTema = await tema.cargarNumeroTema();
  }
}
