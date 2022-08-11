import 'package:flutter/material.dart';



class Triangle extends StatelessWidget {

  final double width;
  final double height;
  const Triangle({Key? key,required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      size: Size(width, height),
      painter: LocalCustomPainter(),
    );
  }
}




class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.5000000,size.height);
    path_0.lineTo(size.width*0.06698733,size.height*0.03571429);
    path_0.lineTo(size.width*0.9330122,size.height*0.03571429);
    path_0.lineTo(size.width*0.5000000,size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}