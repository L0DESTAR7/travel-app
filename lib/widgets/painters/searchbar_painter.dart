import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/widgets/search_line.dart';


class SearchBar extends StatelessWidget {

  final double xFactor;
  final double yFactor;
  final TextEditingController controller;
  const SearchBar({Key? key,required this.xFactor,required this.yFactor,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [CustomPaint(
        size: const Size(344, 126),
        painter: LocalCustomPainter(
          shadows: [
            const Shadow(
              color: Color(0x80000000),
              offset: Offset(0,2),
              blurRadius: 4,
            ),
            const Shadow(
              color: Colors.white,
              offset: Offset(-4,-8),
              blurRadius: 4,
            )
          ]
        ),
      ),
        Positioned(
          top: 23*yFactor,
          left: 20*xFactor,
          child: SearchContainer(
            xFactor: xFactor,
            yFactor: yFactor,
            controller: controller,
          ),
        ),
      ]
    );
  }
}


class LocalCustomPainter extends CustomPainter {

  List<Shadow>? shadows;
  LocalCustomPainter({this.shadows});

  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    Paint _shadowPaint = Paint();
    path_0.moveTo(38.4024,0);
    path_0.lineTo(328,0);
    path_0.cubicTo(336.837,0,344,7.16344,344,16);
    path_0.lineTo(344,126);
    path_0.cubicTo(331.442,84.6358,283.743,75.9681,261.463,76.8048);
    path_0.lineTo(38.4024,76.8048);
    path_0.cubicTo(17.1933,76.8048,0,59.6114,0,38.4024);
    path_0.cubicTo(0,17.1933,17.1934,0,38.4024,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff466779).withOpacity(1.0);

    shadows?.forEach((s) {
      _shadowPaint
        ..color = s.color
        ..maskFilter = MaskFilter.blur(BlurStyle.normal,s.blurRadius);
      canvas.save();
      canvas.translate(s.offset.dx, s.offset.dy);
      canvas.drawPath(path_0, _shadowPaint);
      canvas.restore();
    });

    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}