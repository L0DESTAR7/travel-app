import 'package:flutter/material.dart';
import 'dart:ui' as ui;




class InfoIcon extends StatelessWidget {

  final double width;
  const InfoIcon({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*1.0384615384615385).toDouble()),
      painter: LocalCustomPainter(),
    )
    ;
  }
}




class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_0_stroke.color=Color(0xff466779).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width*0.5000000,size.height*0.4961259),size.width*0.4807692,paint_0_stroke);

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(0);
    canvas.drawCircle(Offset(size.width*0.5000000,size.height*0.4961259),size.width*0.4807692,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.4771615,size.height*0.4058481);
    path_1.lineTo(size.width*0.5312500,size.height*0.4058481);
    path_1.lineTo(size.width*0.5312500,size.height*0.7183481);
    path_1.lineTo(size.width*0.4771615,size.height*0.7183481);
    path_1.lineTo(size.width*0.4771615,size.height*0.4058481);
    path_1.close();
    path_1.moveTo(size.width*0.5312500,size.height*0.3537644);
    path_1.lineTo(size.width*0.4771615,size.height*0.3537644);
    path_1.lineTo(size.width*0.4771615,size.height*0.3016811);
    path_1.lineTo(size.width*0.5312500,size.height*0.3016811);
    path_1.lineTo(size.width*0.5312500,size.height*0.3537644);
    path_1.close();

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}