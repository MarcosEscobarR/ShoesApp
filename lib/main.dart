import 'package:flutter/material.dart';
import 'package:shoes_app/pages/zapato_page.dart';

void main() => runApp(ShoesApp());
class ShoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      home: ZapatoPage()
    );
  }
}

