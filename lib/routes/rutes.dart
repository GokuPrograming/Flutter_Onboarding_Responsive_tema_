import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/istrue.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/AjustesHorizontal.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/AjustesVertical.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/FuentesApp/fuenteAppVertical.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/TemaApp/temaAppVertical.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/responsiveAjustes.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/MenuApp.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Onboarding/onboradingScreen.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/loginHorizontal.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/loginVertical.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/login/responsiveAjustes.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/registro.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes.dart';

class AppRoutes {
  static const home = '/MenuApp';
  static const login = '/login';
  static const register = '/registro';
  static const ajustesApp = '/ajustesApp';
  static const cambiarTemaScreen = '/CambiarTema';
  static const cambiarLetra = '/CambiarLetra';
  static const ounbording = '/onboarding';

  ///
  static const yaSeVioElOnboarding = '/filtroMenu';

  ///
  static final routes = <String, WidgetBuilder>{
    //recibe una cadena , y un witget
    yaSeVioElOnboarding: (context) =>
        const Istrue(onBoarding: OnboradingScreen(), menuApp: Menuapp()),

    home: (context) => const Menuapp(),
    login: (context) => const ResponsiveLogin(
        pantallaVerticalMobile: LoginVertical(),
        pantallaHorizontalMobile: Loginhorizontal()),
    register: (context) => const Registro(),
    ajustesApp: (context) => const ResponsiveAjustes(
        pantallaVerticalMobile: AjustesVertical(),
        pantallaHorizontalMobile: Ajusteshorizontal()),
    cambiarTemaScreen: (context) => const TemaAppVertical(),
    cambiarLetra: (context) => const Fuenteappvertical(),
    ounbording: (context) => const OnboradingScreen()
  };
}
