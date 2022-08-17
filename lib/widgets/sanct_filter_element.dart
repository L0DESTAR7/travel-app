import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/models/filter.dart';
import 'package:tourisme_app_ma/models/notifications/create_filter_notification.dart';
import 'package:tourisme_app_ma/widgets/painters/filter_separator_painter.dart';

class SanctFilterElement extends StatefulWidget {
  final double width;
  final int maxSanct;

  const SanctFilterElement({Key? key, required this.width, required this.maxSanct})
      : super(key: key);

  @override
  State<SanctFilterElement> createState() => _SanctFilterElementState();
}

class _SanctFilterElementState extends State<SanctFilterElement> {
  bool selected = false;

  final Color selectedColor = const Color(0xBDA6D8F3);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 19,),
        GestureDetector(
          onTapDown: (details) {
            selected = true;
            setState(() {});
          },
          onTapUp: (details) {
            Future.delayed(const Duration(milliseconds: 100), () {
              selected = false;
              setState(() {});
            });
          },
          onTap: (){
            Filter filter = Filter(type: FilterType.maxSanct, value: widget.maxSanct.toString());
            CreateFilterNotification createMaxSanctFilterNotification = CreateFilterNotification(filter);
            createMaxSanctFilterNotification.dispatch(context);
          },
          child: Container(
            color: selected ? selectedColor : Colors.transparent,
            width: widget.width,
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "≤ ${widget.maxSanct} sanction",
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
