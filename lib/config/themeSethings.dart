import 'package:flutter/material.dart';

class Themesethings {
  static ThemeData TemaClaro() {
    final tema = ThemeData.light();
    return tema;
  }

  static ThemeData TemaOscuro() {
    final tema = ThemeData.dark();
    return tema;
  }

  static ThemeData TemaPersonalizado() {
    // double aa = 2.1;
    final tema = ThemeData.dark();
    return tema.copyWith(
      primaryColor: const Color(0xFF0D47A1), // Un azul oscuro suave
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 70, 66, 35), // Fondo claro suave
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(
            255, 103, 69, 18), // Aplicamos el mismo azul oscuro en la AppBar
        titleTextStyle: TextStyle(
          color: Colors.white, // Texto blanco en la AppBar
          fontSize: 20,
        ),
      ),
      textTheme: tema.textTheme.copyWith(
          // bodyText1: TextStyle(
          //   color: Colors.black87, // Texto oscuro para buen contraste en fondo claro
          //   fontSize: 18,
          // ),
          // bodyText2: TextStyle(
          //   color: Colors.black54, // Texto secundario más tenue
          // ),
          ),
      buttonTheme: tema.buttonTheme.copyWith(
        buttonColor: const Color(0xFF0D47A1), // Botones con azul oscuro
        textTheme: ButtonTextTheme.primary, // Texto de botones en blanco
      ),
      floatingActionButtonTheme: tema.floatingActionButtonTheme.copyWith(
        backgroundColor: const Color(0xFF0D47A1), // FAB con azul oscuro
      ),
      colorScheme: tema.colorScheme.copyWith(
        secondary: const Color(0xFF0D47A1), // Color secundario para detalles
      ),
    );
  }

}
