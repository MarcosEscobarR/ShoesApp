import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;

  const CustomAppbar( {@required this.title});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: 150,
          child: Row(
            children: [
              Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
              Spacer(),
              Icon(Icons.search)
            ],
          ),
        ),
      ),
    );
  }
}
