import 'package:flutter/material.dart';

class Ajustes extends StatelessWidget {
  const Ajustes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes de la app'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            InkWell(
              onTap: () {
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .1,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color.fromARGB(11, 9, 239, 239)),
                child: const Text(
                  'Cambiar el tema de la aplicacion',
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
