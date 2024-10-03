import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/globalSettings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';

class MenuContent {
  String image;
  String title;
  String disposition;
  Widget? tema;

  MenuContent({
    required this.image,
    required this.title,
    required this.disposition,
    this.tema,
  });
}

// Lista de contenido de Onboarding
List<MenuContent> contents = [
  MenuContent(
    image: 'assets/img/1.jfif',
    title: 'Goku Vegeta',
    disposition:
        'La batalla entre Goku y Vegeta, es un enfrentamiento épico marcado por la rivalidad entre ambos Saiyajin',
  ),
  MenuContent(
    image: 'assets/img/n.jfif',
    title: 'Vegeta Blue',
    disposition: 'Una de las mejores transformaciones de Vegeta',
    // Widget de selector de temas
  ),
  MenuContent(
    image: 'assets/img/a.jpg',
    title: 'Goku Black',
    disposition: 'No se por que black si tiene el pelo Rosa, eso ya no te puedo ayudar mano',
    // Llamada correcta al widget PedirPermiso
  ),
];

// Widget para pedir permisos
