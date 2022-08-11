import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/widgets/painters/filter_separator_painter.dart';

class FilterElement extends StatefulWidget {
  final String title;
  final double width;

  FilterElement({Key? key, required this.title, required this.width})
      : super(key: key);

  @override
  State<FilterElement> createState() => _FilterElementState();
}

class _FilterElementState extends State<FilterElement> {
  bool selected = false;

  final Color selectedColor = Color(0xBDA6D8F3);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 19,),
        GestureDetector(
          onTapDown: (details) {
            selected = true;
            print(selected);
            setState(() {});
          },
          onTapUp: (details) {
            Future.delayed(const Duration(milliseconds: 100), () {
              selected = false;
              print(selected);
              setState(() {});
            });
          },
          child: Container(
            color: selected ? selectedColor : Colors.transparent,
            width: widget.width,
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: "Michroma",
                  letterSpacing: 3,
                  color: mainDarkColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16,),
        FilterSeparator(width: widget.width),
      ],
    );
  }
}
