import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/models/AgentVoyage.dart';

import 'details_button.dart';
import 'painters/element_header_painter.dart';

class ListElement extends StatelessWidget {
  final double xFactor;
  final double yFactor;
  final AgentVoyage agentVoyage;
  bool stateVar;

  List<Color> colorPicker(int index) {
    final int r = index % 5;

    switch (r) {
      case 0:
        {
          return [const Color(0xfff88888), const Color(0xffFFCD4E)];
        }

      case 1:
        {
          return [const Color(0xFFFFAE4E), const Color(0xFF5DEEE5)];
        }

      case 2:
        {
          return [const Color(0xFF96DAD5), const Color(0xFF5460D3)];
        }

      case 3:
        {
          return [const Color(0xFF5460D3), const Color(0xFFD096DA)];
        }

      case 4:
        {
          return [const Color(0xFFD096DA), const Color(0xFFE79B9B)];
        }
    }

    return [];
  }

  ListElement(
      {Key? key,
      required this.yFactor,
      required this.xFactor,
      required this.agentVoyage,
      required this.stateVar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //LIST ELEMENT CONTAINER
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            alignment: Alignment.topLeft,
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
            child: ElementHeader(
              xFactor: xFactor,
              yFactor: yFactor,
              title: agentVoyage.nom,
              colors: colorPicker(agentVoyage.index),
            ),
          ),
        ),
      ),

      // DETAILS BUTTON
      Padding(
        padding:
            EdgeInsets.fromLTRB(0, 35 * yFactor, 70 * xFactor, 16 * yFactor),
        child: Align(
          alignment: Alignment.centerRight,
          child: Details(
            xFactor: xFactor,
            yFactor: yFactor,
            stateVar: stateVar,
          ),
        ),
      )
    ]);
  }
}
