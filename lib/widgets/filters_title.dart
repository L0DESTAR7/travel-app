import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/widgets/painters/filter_icon_painter.dart';


class FiltersTitle extends StatelessWidget {

  final double width;
  const FiltersTitle({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FilterIcon(width: width/20),
          Container(
            width: width/6,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: const Text(
                "Filtres",
                style: TextStyle(
                  fontFamily: "Michroma",
                  color: mainDarkColor,
                  letterSpacing: 3,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
