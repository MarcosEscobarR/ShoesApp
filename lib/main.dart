import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/helpers/changue_color_provider.dart';
import 'package:shoes_app/pages/zapato_page.dart';

void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ZapatoProvider()),
  ], child: ShoesApp()));
}

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
