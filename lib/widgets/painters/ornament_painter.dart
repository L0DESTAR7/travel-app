import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Ornament extends StatelessWidget {

  final double width;

  const Ornament({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.29310344827586204).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}




class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.4655172,size.height*0.08208176);
    path_0.lineTo(size.width*0.3534483,size.height*0.4938465);
    path_0.lineTo(size.width*0.4655172,size.height*0.9056118);
    path_0.lineTo(size.width*0.7413793,size.height*0.9056118);
    path_0.lineTo(size.width*0.8534483,size.height*0.4938465);
    path_0.lineTo(size.width*0.7413793,size.height*0.08208176);
    path_0.lineTo(size.width*0.4655172,size.height*0.08208176);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.02241379;
    paint_0_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_stroke);



    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = const Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.5775862,size.height*0.3761994,size.width*0.1896552,size.height*0.2352941),bottomRight: Radius.circular(size.width*0.03448276),bottomLeft:  Radius.circular(size.width*0.03448276),topLeft:  Radius.circular(size.width*0.03448276),topRight:  Radius.circular(size.width*0.03448276)),paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.3534483,size.height*0.4938465);
    path_2.lineTo(0,size.height*0.4938465);

    Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_2_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_2,paint_2_stroke);


    Path path_3 = Path();
    path_3.moveTo(size.width*0.7844828,size.height*0.02325800);
    path_3.lineTo(size.width*0.9224138,size.height*0.4938465);
    path_3.lineTo(size.width*0.7844828,size.height*0.9644353);

    Paint paint_3_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=1;
    paint_3_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_3,paint_3_stroke);


    Path path_4 = Path();
    path_4.moveTo(size.width*0.8879310,size.height*0.1997288);
    path_4.lineTo(size.width*0.9741379,size.height*0.4938465);
    path_4.lineTo(size.width*0.8879310,size.height*0.7879647);

    Paint paint_4_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=1;
    paint_4_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_4,paint_4_stroke);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}