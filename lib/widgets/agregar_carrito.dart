import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class AgregarCarrito extends StatelessWidget {
  final double monto;

  const AgregarCarrito({this.monto});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            '\$$monto',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          BotonNaranja(width: 150, height: 50, texto: "Add to cart"),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
