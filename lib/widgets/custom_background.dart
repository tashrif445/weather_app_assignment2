import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget mainChild;

  const CustomBackground({Key? key, required this.mainChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3F2D8F),
              Color(0xFF9D52AC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(child: mainChild),
      ),
    );
  }
}
