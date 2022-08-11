import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class Separator extends StatelessWidget {

  final double width;
  const Separator({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.01488833746898263).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: LocalCustomPainter(),
    );
  }
}



class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,size.height*0.06589767,size.width*0.03473945,size.height*0.8333333),bottomRight: Radius.circular(size.width*0.006203474),bottomLeft:  Radius.circular(size.width*0.006203474),topLeft:  Radius.circular(size.width*0.006203474),topRight:  Radius.circular(size.width*0.006203474)),paint_0_fill);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.9652605,size.height*0.06589767,size.width*0.03473945,size.height*0.8333333),bottomRight: Radius.circular(size.width*0.006203474),bottomLeft:  Radius.circular(size.width*0.006203474),topLeft:  Radius.circular(size.width*0.006203474),topRight:  Radius.circular(size.width*0.006203474)),paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.9727047,size.height*0.5658983);
    path_2.lineTo(size.width*0.03225806,size.height*0.5658983);

    Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_2_stroke.color=Color(0xff466779).withOpacity(0.71);
    canvas.drawPath(path_2,paint_2_stroke);

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2,paint_2_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
