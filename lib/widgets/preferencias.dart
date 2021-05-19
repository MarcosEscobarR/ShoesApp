import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/helpers/changue_color_provider.dart';
import 'package:shoes_app/widgets/boton_naranja.dart';

class Preferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 20,),
          _Colores(),
          BotonNaranja(width: 200, height: 30, texto: "More related items"),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}

class _Colores extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(left: 90, child: _ColorBox(color: Colors.black, colorString: 'negro',)),
          Positioned(left: 60, child: _ColorBox(color: Colors.green, colorString: 'verde',)),
          Positioned(left: 30, child: _ColorBox(color: Colors.yellow, colorString: 'amarillo',)),
          _ColorBox(color: Colors.blue, colorString: 'azul',),
        ],
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color color;
  final String colorString;

  const _ColorBox({Key key, @required this.color, this.colorString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<ZapatoProvider>(context, listen: false).assetImage = colorString;
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100)
        ),
      ),
    );
  }
}
