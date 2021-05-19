import 'package:flutter/services.dart' as services;

void ChangueStatusbarLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.light);
}

void ChangueStatusbarDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.dark);
}
