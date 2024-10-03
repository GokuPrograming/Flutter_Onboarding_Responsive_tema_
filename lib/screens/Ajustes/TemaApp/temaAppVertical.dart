import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/globalSettings.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemaAppVertical extends StatefulWidget {
  const TemaAppVertical({super.key});

  @override
  State<TemaAppVertical> createState() => _TemaAppVerticalState();
}

class _TemaAppVerticalState extends State<TemaAppVertical> {
  int? val = Globalsettings.lightTheme.value;
  TemaStorage tema = TemaStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema en la aplicacion'),
      ),
      body:
      
       Container(
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
                        Globalsettings.lightTheme.value = val;
                        val = Globalsettings.lightTheme.value;
                        tema.guardarNumeroTema(val);
                      });
                    },
                    title: Text('Dark'),
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
                        tema.guardarNumeroTema(val);
                        Globalsettings.lightTheme.value = val;
                        val = Globalsettings.lightTheme.value;
                      });
                    },
                    title: Text('Light'),
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
                        tema.guardarNumeroTema(val);
                        Globalsettings.lightTheme.value = val;
                        val = Globalsettings.lightTheme.value;
                      });
                    },
                    title: Text('custom'),
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
