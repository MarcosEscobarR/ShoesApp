import 'package:flutter/material.dart';

class Opciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _Botones(),
    );
  }
}

class _Botones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      _Boton(icon: Icons,)
    ],);
  }
}

class _Boton extends StatelessWidget {
  final IconData icon;

  const _Boton({Key key,@required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
