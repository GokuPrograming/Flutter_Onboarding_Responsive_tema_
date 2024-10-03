import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/globalSettings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/themeSethings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/routes/rutes.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/loginHorizontal.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/loginVertical.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/responsiveAjustes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Cargar el tema almacenado antes de iniciar la app
  TemaStorage temaStorage = TemaStorage();
  int? numeroTema = await temaStorage.cargarNumeroTema();

  // Si no hay un tema almacenado, se aplicará el tema oscuro por defecto
  if (numeroTema == null) {
    Globalsettings.lightTheme.value = 1;
    await temaStorage
        .guardarNumeroTema(1); // Guardar el tema oscuro por defecto
  } else {
    Globalsettings.lightTheme.value = numeroTema;
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Globalsettings.lightTheme,
      builder: (BuildContext context, value, Widget? child) {
        return SafeArea(
          child: MaterialApp(
            title: 'Material App',
            // home: const LoginScreen(),
            home: const ResponsiveLogin(
                pantallaVerticalMobile: LoginVertical(),
                pantallaHorizontalMobile: Loginhorizontal()),
            theme: () {
              if (value == 1) {
                return Themesethings.TemaOscuro(); // Tema oscuro
              } else if (value == 2) {
                return Themesethings.TemaClaro(); // Tema claro
              } else {
                return Themesethings.TemaPersonalizado(); // Tema personalizado
              }
            }(),
            debugShowCheckedModeBanner: false,
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
