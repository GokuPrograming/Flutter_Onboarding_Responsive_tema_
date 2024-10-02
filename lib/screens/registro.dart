import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  ///controladores
  late TextEditingController ControladorEmail = TextEditingController();
  late TextEditingController ControladorPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Positioned(child: Image.asset('')), EmailBox()],
      ),
    );
  }
}

class EmailBox extends StatelessWidget {
  const EmailBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(label: Text('data')),);
  }
}
