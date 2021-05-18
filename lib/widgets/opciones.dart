import 'package:flutter/material.dart';

class Opciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: _Botones(),
    );
  }
}

class _Botones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 20,),
      _Boton(child: Icon(Icons.star, color: Colors.red, size: 25,),),
      _Boton(child: Icon(Icons.shopping_cart, color: Colors.grey.withOpacity(0.4), size: 25,),),
      _Boton(child: Icon(Icons.settings, color: Colors.grey.withOpacity(0.4), size: 25,),),
        SizedBox(width: 20,)
    ],);
  }
}

class _Boton extends StatelessWidget {
  final Widget child;

  const _Boton({Key key,@required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: 70 ,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 20,
              spreadRadius: -15,
              offset: Offset(0, 10)
            )
          ]
      ),
    );
  }
}
