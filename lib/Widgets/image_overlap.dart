import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverLap extends StatelessWidget {
  final String;

  OverLap({required this.String});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/illustration background.png',
          height: double.maxFinite,
          fit: BoxFit.cover,
          width: double.maxFinite,
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              child: Image.asset(
                String,
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
