import 'package:permission_handler/permission_handler.dart';

class Permisos {
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
  Future<void> requestCameraPermission() async {
  PermissionStatus status = await Permission.camera.request();

  if (status.isGranted) {
    // Permiso concedido
    print('Permiso de cámara concedido.');
  } else if (status.isDenied) {
    // Permiso denegado
    print('Permiso de cámara denegado.');
  } else if (status.isPermanentlyDenied) {
    // El permiso está denegado permanentemente, puedes llevar al usuario a la configuración
    openAppSettings();
  }
}

}
