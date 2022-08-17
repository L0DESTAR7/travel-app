import 'package:flutter/material.dart';



class ServicesGlassPanel extends StatelessWidget {

  final double width;
  final Color color;
  const ServicesGlassPanel({Key? key, required this.width, this.color = Colors.white,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.2346368715083799)),
      painter: LocalCustomPainter(color: color),
    )
    ;
  }
}






class LocalCustomPainter extends CustomPainter {


  final Color color;
  const LocalCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.6671006,size.height*0.02380952);
    path_0.lineTo(size.width*0.002793296,size.height*0.02380952);
    path_0.lineTo(size.width*0.002793296,size.height*0.6071429);
    path_0.cubicTo(size.width*0.002793296,size.height*0.8175381,size.width*0.04281251,size.height*0.9880952,size.width*0.09217877,size.height*0.9880952);
    path_0.lineTo(size.width*0.9050279,size.height*0.9880952);
    path_0.cubicTo(size.width*0.9543966,size.height*0.9880952,size.width*0.9944134,size.height*0.8175381,size.width*0.9944134,size.height*0.6071429);
    path_0.lineTo(size.width*0.9944134,size.height*0.3496333);
    path_0.cubicTo(size.width*0.9944134,size.height*0.3398071,size.width*0.9929944,size.height*0.3309905,size.width*0.9908492,size.height*0.3274357);
    path_0.lineTo(size.width*0.9379274,size.height*0.2399143);
    path_0.cubicTo(size.width*0.8515698,size.height*0.09708548,size.width*0.7597374,size.height*0.02380952,size.width*0.6671006,size.height*0.02380952);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = color;
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.002793296,size.height*0.01785714);
    path_1.lineTo(size.width*0.001396648,size.height*0.01785714);
    path_1.lineTo(size.width*0.001396648,size.height*0.02380952);
    path_1.lineTo(size.width*0.001396648,size.height*0.6071429);
    path_1.cubicTo(size.width*0.001396648,size.height*0.8208238,size.width*0.04204117,size.height*0.9940476,size.width*0.09217877,size.height*0.9940476);
    path_1.lineTo(size.width*0.9050279,size.height*0.9940476);
    path_1.cubicTo(size.width*0.9551676,size.height*0.9940476,size.width*0.9958101,size.height*0.8208238,size.width*0.9958101,size.height*0.6071429);
    path_1.lineTo(size.width*0.9958101,size.height*0.3496333);
    path_1.cubicTo(size.width*0.9958101,size.height*0.3373500,size.width*0.9940391,size.height*0.3263310,size.width*0.9913520,size.height*0.3218881);
    path_1.lineTo(size.width*0.9384358,size.height*0.2343655);
    path_1.cubicTo(size.width*0.8519106,size.height*0.09126976,size.width*0.7599106,size.height*0.01785714,size.width*0.6671006,size.height*0.01785714);
    path_1.lineTo(size.width*0.002793296,size.height*0.01785714);
    path_1.close();

    Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.015;
    paint_1_stroke.color=Colors.white.withOpacity(0.6);
    paint_1_stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_1,paint_1_stroke);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}