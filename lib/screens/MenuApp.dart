import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Menu/MenuScreen.dart';

class Menuapp extends StatelessWidget {
  const Menuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ajustesApp');
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Menuscreen(),
    );
  }
}
