import 'package:flutter/material.dart';


class FilterIcon extends StatelessWidget {

  final double width;
  const FilterIcon({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.3888888888888889).toDouble()),
      painter: LocalCustomPainter(),
    );
  }
}






class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0,0,size.width,size.height*0.1428571),paint_0_fill);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(size.width*0.1111111,size.height*0.4285714,size.width*0.7777778,size.height*0.1428571),paint_1_fill);

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(size.width*0.2777778,size.height*0.8571429,size.width*0.4444444,size.height*0.1428571),paint_2_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}