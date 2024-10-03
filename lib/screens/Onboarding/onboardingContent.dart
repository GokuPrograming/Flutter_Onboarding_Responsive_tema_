import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/globalSettings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';

class Onboardingcontent {
  String image;
  String title;
  String disposition;
  Widget? tema;

  Onboardingcontent({
    required this.image,
    required this.title,
    required this.disposition,
    this.tema,
  });
}

Future<void> requestStoragePermission() async {
  PermissionStatus status = await Permission.storage.request();
  if (status.isGranted) {
    // Permiso concedido
    print('Permiso de almacenamiento concedido.');
  } else if (status.isDenied) {
    // Permiso denegado
    print('Permiso de almacenamiento denegado.');
  } else if (status.isPermanentlyDenied) {
    // El permiso está denegado permanentemente, puedes llevar al usuario a la configuración
    openAppSettings();
  }
}

Future<void> CameraPermission() async {
  // Solicitar permisos de almacenamiento y cámara
  PermissionStatus cameraStatus = await Permission.camera.request();

  if (cameraStatus.isGranted) {
    print('Permisos de almacenamiento y cámara concedidos.');
  } else {
    if (cameraStatus.isDenied) {
      print('Permiso de cámara denegado.');
    }
  }
}

// Lista de contenido de Onboarding
List<Onboardingcontent> contents = [
  Onboardingcontent(
    image: 'assets/img/source.gif',
    title: 'Bienvenido!!',
    disposition:
        'Esta App es la primera aplicacion responsiva que he realizado, podrias cambiar el color, moverte por el menu y que funcione',
  ),
  Onboardingcontent(
    image: 'assets/img/jake.gif',
    title: 'Cambiemos el tema',
    disposition: 'Escoge el tema',
    tema: TemaSelectorWidget(), // Widget de selector de temas
  ),
  Onboardingcontent(
    image: 'assets/img/seguridad.gif',
    title: '¿Nos concedes tus permisos?🤗',
    disposition: '',
    tema: const PedirPermiso(), // Llamada correcta al widget PedirPermiso
  ),
];

// Widget para pedir permisos
class PedirPermiso extends StatefulWidget {
  const PedirPermiso({super.key});

  @override
  _PedirPermisoState createState() => _PedirPermisoState();
}

class _PedirPermisoState extends State<PedirPermiso> {
  String message = 'Solicitar permiso de cámara';

  Future<void> requestCameraPermission() async {
    PermissionStatus cameraStatus = await Permission.camera.request();
    setState(() {
      message =
          cameraStatus.isGranted ? 'Permiso concedido' : 'Permiso denegado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              await requestCameraPermission();
            },
            child: const Text('Solicitar permiso de cámara'),
          ),
          const SizedBox(height: 20), // Espacio entre el botón y el texto
          Text(message), // Mostrar el mensaje sobre el estado del permiso
        ],
      ),
    );
  }
}

class TemaSelectorWidget extends StatefulWidget {
  @override
  _TemaSelectorWidgetState createState() => _TemaSelectorWidgetState();
}

class _TemaSelectorWidgetState extends State<TemaSelectorWidget> {
  int? val = Globalsettings.lightTheme.value;
  TemaStorage tema = TemaStorage();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      // height: MediaQuery.of(context).size.height*.000001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: RadioListTile(
                  value: 1,
                  groupValue: val,
                  onChanged: (int? value) {
                    setState(() {
                      val = value;
                      Globalsettings.lightTheme.value = val;
                      tema.guardarNumeroTema(val);
                    });
                  },
                  title: const Text('Dark'),
                  secondary: const Icon(Icons.dark_mode),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  value: 2,
                  groupValue: val,
                  onChanged: (int? value) {
                    setState(() {
                      val = value;
                      Globalsettings.lightTheme.value = val;
                      tema.guardarNumeroTema(val);
                    });
                  },
                  title: const Text('Light'),
                  secondary: const Icon(Icons.light_mode),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  value: 3,
                  groupValue: val,
                  onChanged: (int? value) {
                    setState(() {
                      val = value;
                      Globalsettings.lightTheme.value = val;
                      tema.guardarNumeroTema(val);
                    });
                  },
                  title: const Text('Custom'),
                  secondary: const Icon(Icons.settings),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
