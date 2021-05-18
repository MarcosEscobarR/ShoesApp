import 'package:flutter/material.dart';
import 'package:shoes_app/pages/description_page.dart';

class ZapatoPreview extends StatelessWidget {
  final bool fullScreen;

  const ZapatoPreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => DescriptionPage()));
        }
      },
      child: Padding(
        padding: fullScreen
            ? EdgeInsets.all(10)
            : EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: fullScreen ? 420 : 500,
          decoration: BoxDecoration(
              color: Color(0xffFFCF53),
              borderRadius: BorderRadius.circular(50)),
          child: Column(
            children: [_ZapatoStack(), if (!fullScreen) _Botones()],
          ),
        ),
      ),
    );
  }
}

class _Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _Boton(
          numero: 7,
        ),
        _Boton(
          numero: 7.5,
        ),
        _Boton(
          numero: 8,
        ),
        _Boton(
          numero: 8.5,
        ),
        _Boton(
          numero: 9,
        ),
        _Boton(
          numero: 9.5,
        ),
      ],
    );
  }
}

class _Boton extends StatelessWidget {
  final double numero;

  const _Boton({this.numero});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: numero == 9.0 ? Colors.white : Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: numero == 9.0 ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))
          ]),
    );
  }
}

class _ZapatoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Positioned(bottom: 35, left: 75, child: _Sombra()), _Zapato()],
    );
  }
}

class _Sombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}

class _Zapato extends StatelessWidget {
  const _Zapato({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Image(
        image: AssetImage('assets/imgs/azul.png'),
      ),
    );
  }
}
