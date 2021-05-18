import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/custom_widgets.dart';

import '../widgets/custom_appbar.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppbar(title: "For You",),
      // body: ZapatoPreview(),
      body: Column(
        children: [
          CustomAppbar(title: "For You"),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ZapatoPreview(),
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
              ],
            ),
          )),
          AgregarCarrito(monto: 180.0,)
        ],
      ),
    );
  }
}
