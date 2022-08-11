import 'package:flutter/material.dart';


class FilterSeparator extends StatelessWidget {

  final double width;
  const FilterSeparator({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width*0.017).toDouble()),
      painter: LocalCustomPainter(),
    );
  }
}





class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,0,size.width*0.07821229,size.height),bottomRight: Radius.circular(size.width*0.005586592),bottomLeft:  Radius.circular(size.width*0.005586592),topLeft:  Radius.circular(size.width*0.005586592),topRight:  Radius.circular(size.width*0.005586592)),paint_0_fill);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff466779).withOpacity(1.0);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.9217877,0,size.width*0.07821229,size.height),bottomRight: Radius.circular(size.width*0.005586592),bottomLeft:  Radius.circular(size.width*0.005586592),topLeft:  Radius.circular(size.width*0.005586592),topRight:  Radius.circular(size.width*0.005586592)),paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.9329609,size.height*0.5000000);
    path_2.lineTo(size.width*0.06703911,size.height*0.5000000);

    Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_2_stroke.color=Color(0xff466779).withOpacity(0.6);
    canvas.drawPath(path_2,paint_2_stroke);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}