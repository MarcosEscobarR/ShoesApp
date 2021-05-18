import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/boton_naranja.dart';

class BuyAndPrice extends StatelessWidget {
  final double price;

  const BuyAndPrice({ this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          SizedBox(width: 20,),
         Text('\$$price', style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
        Spacer(),
        BotonNaranja(width: 130, height: 50, texto: "Buy Now"),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
