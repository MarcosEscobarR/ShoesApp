import 'package:flutter/material.dart';

class ZapatoDescripcion extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const ZapatoDescripcion({this.titulo, this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Text(
              titulo,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            descripcion,
            style: TextStyle(color: Colors.black45, height: 1.6),
          )
        ],
      ),
    );
  }
}
