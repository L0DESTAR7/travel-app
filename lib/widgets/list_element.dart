import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';

import 'details_button.dart';

class ListElement extends StatelessWidget {
  final double xFactor;
  final double yFactor;

  const ListElement({Key? key, required this.yFactor, required this.xFactor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 332 * xFactor,
            height: 82 * yFactor,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24 * yFactor),
                color: const Color(0xFFEFFCFD),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x66000000),
                    offset: Offset(7, 7),
                    blurRadius: 11,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, -8),
                    blurRadius: 9,
                  )
                ]),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 16*yFactor, 70*xFactor, 16*yFactor),
        child: Align(
          alignment: Alignment.centerRight,
          child: Details(xFactor: xFactor, yFactor: yFactor),
        ),
      )
    ]);
  }
}

