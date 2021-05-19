import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final double width;
  final double height;
  final String texto;

  const BotonNaranja(
      {@required this.width, @required this.height, @required this.texto});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(texto)));
      },
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(50)),
        child: Text(
          texto,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
