import 'package:flutter/material.dart';

class Underliner extends StatelessWidget {
  final double width;
  const Underliner({Key? key,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.009569377990430622).toDouble()),
      painter: LocalCustomPainter(),
    );
  }
}





class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,0,size.width,size.height),bottomRight: Radius.circular(size.width*0.004784689),bottomLeft:  Radius.circular(size.width*0.004784689),topLeft:  Radius.circular(size.width*0.004784689),topRight:  Radius.circular(size.width*0.004784689)),paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}