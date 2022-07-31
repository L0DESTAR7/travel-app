import 'package:flutter/material.dart';


class SearchIcon extends StatelessWidget {

  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(19, 19),
      painter: LocalCustomPainter(),
    );
  }
}


class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(12.5,13.5);
    path_0.lineTo(17,18);
    path_0.moveTo(15,8);
    path_0.cubicTo(15,11.866,11.866,15,8,15);
    path_0.cubicTo(4.13401,15,1,11.866,1,8);
    path_0.cubicTo(1,4.13401,4.13401,1,8,1);
    path_0.cubicTo(11.866,1,15,4.13401,15,8);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=1;
    paint_0_stroke.color=const Color(0xff313131).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_0,paint_0_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}