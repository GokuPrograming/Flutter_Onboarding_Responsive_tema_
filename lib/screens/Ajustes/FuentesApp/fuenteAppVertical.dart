import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/globalSettings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/fuente_storage.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';

class Fuenteappvertical extends StatefulWidget {
  const Fuenteappvertical({super.key});

  @override
  State<Fuenteappvertical> createState() => _FuenteappverticalState();
}

class _FuenteappverticalState extends State<Fuenteappvertical> {
  int? val = 1;
  FuenteStorage fuente = FuenteStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuente'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            // color: Colors.amberAccent
            ),
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
                        Globalsettings.fuenteApp.value = val;
                        fuente.guardarNumeroFuente(val);
                      });
                    },
                    title: Text('Fuente 1'),
                    secondary: Icon(Icons.dark_mode),
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
                        fuente.guardarNumeroFuente(val);
                        Globalsettings.fuenteApp.value = val;
                      });
                    },
                    title: Text('Fuente 2'),
                    secondary: Icon(Icons.light_mode),
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
                         fuente.guardarNumeroFuente(val);
                        Globalsettings.fuenteApp.value = val;
                      });
                    },
                    title: Text('Fuente 3'),
                    secondary: Icon(Icons.dark_mode),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
