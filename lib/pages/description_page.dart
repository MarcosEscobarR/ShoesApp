import 'package:flutter/material.dart';
import 'package:shoes_app/pages/zapato_page.dart';

import '../widgets/custom_widgets.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Hero(
                    tag: 'Tarea-1',
                    child: ZapatoPreview(
                      fullScreen: true,
                    )),
                Positioned(
                    top: 30,
                    left: 10,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ZapatoPage()));
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 50,
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ))
              ],
            ),
            ZapatoDescripcion(
              titulo: 'Nike Air Max 720',
              descripcion:
                  "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
            ),
            BuyAndPrice(
              price: 180,
            ),
            Preferencias(),
            Opciones()
          ]),
        ),
      ),
    );
  }
}
