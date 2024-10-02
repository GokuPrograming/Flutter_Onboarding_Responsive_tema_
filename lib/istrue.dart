import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/onboarding.dart';

class Istrue extends StatelessWidget {
  const Istrue({super.key, required this.onBoarding, required this.menuApp});

  final Widget onBoarding;
  final Widget menuApp;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: validacion(),
      builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Mostrar un widget de carga mientras se espera la validación
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Manejar el error si es necesario
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // Mostrar el widget correspondiente según la validación
          return snapshot.data!;
        }
      },
    );
  }

  Future<Widget> validacion() async {
    OnboardingVisto temaStorage = OnboardingVisto();
    int? yavistop = await temaStorage.cargarOnboarding();

    // Si no hay un tema almacenado, se aplicará el tema oscuro por defecto
    if (yavistop == null) {
      return onBoarding; // Retornar el onboarding si no ha sido visto
    } else {
      return menuApp; // Retornar el menú si el onboarding ya fue visto
    }
  }
}
