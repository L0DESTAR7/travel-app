import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/widgets/painters/concave_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/search_icon_painter.dart';

import 'search_field.dart';

class SearchContainer extends StatelessWidget {
  final double xFactor;
  final double yFactor;

  const SearchContainer(
      {Key? key, required this.xFactor, required this.yFactor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320 * xFactor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            width: 200 * xFactor,
            height: 34 * yFactor,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFEFFCFD),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Container(
                width: 200 * xFactor,
                height: 34 * yFactor,
                decoration: ConcaveDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    depth: 4,
                    colors: const [Color(0x80000000), Color(0xFFFFFFFF)]),
                child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  child: SearchField(),
                ))),
        SearchButton(xFactor: xFactor, yFactor: yFactor),
      ]),
    );
  }
}

class SearchButton extends StatefulWidget {
  const SearchButton({
    Key? key,
    required this.xFactor,
    required this.yFactor,
  }) : super(key: key);

  final double xFactor;
  final double yFactor;

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  bool isPressed = false;


  /// Method supposed to be triggered when the search button is pressed in order
  /// to activate and deactivate shadows and border highlight effects.
  void searchPress() async {
    isPressed = true;
    setState(() {});

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isPressed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        searchPress();
      },
      child: Container(
        width: 32 * widget.xFactor,
        height: 40 * widget.yFactor,
        decoration: BoxDecoration(
            border: !isPressed
                ? null
                : Border.all(
                    color: Color(0xC031B1D3),
                    width: 2,
                  ),
            color: const Color(0xFFEFFCFD),
            borderRadius: BorderRadius.circular(31),
            boxShadow: isPressed
                ? null
                : const [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 3),
                      blurRadius: 3,
                    )
                  ]),
        child: const Align(alignment: Alignment.center, child: SearchIcon()),
      ),
    );
  }
}
