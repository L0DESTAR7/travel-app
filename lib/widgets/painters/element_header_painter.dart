import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ElementHeader extends StatelessWidget {
  final double xFactor;
  final double yFactor;
  final String title;
  final List<Color> colors;

  const ElementHeader({Key? key, required this.xFactor, required this.yFactor, required this.title, required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomPaint(
        size: Size(262 * xFactor,
            (262 * xFactor * yFactor * 0.24334600760456274).toDouble()),
        painter: LocalShapePainter(
          colors: colors,
        ),
        child: CustomPaint(
          size: Size(262 * xFactor,
              (262 * xFactor * yFactor * 0.24334600760456274).toDouble()),
          painter: LocalGlowPainter(
            sigma: 5,
            colors: colors,
          ),
        ),
      ),
      Row(
        children: [
          Flexible(
            child: Container(
              width: 150 * xFactor,
              padding: EdgeInsets.fromLTRB(20 * xFactor, 10 * yFactor, 0, 0),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  height: 0.8 * yFactor,
                  color: Colors.black,
                  fontFamily: "Gruppo",
                  fontSize: 26 * xFactor,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      )
    ]);
  }
}

/// Handles the painting of the glow
class LocalGlowPainter extends CustomPainter {

  final List<Color> colors;
  double sigma = 0;
  LocalGlowPainter({this.sigma = 0,required this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6463878, size.height * 0.6097516);
    path_0.cubicTo(
        size.width * 0.5521559,
        size.height * 1.051527,
        size.width * 0.2609365,
        size.height * 1.029656,
        size.width * 0.07542776,
        size.height * 0.9407766);
    path_0.cubicTo(
        size.width * 0.03288563,
        size.height * 0.9203953,
        size.width * 0.001901141,
        size.height * 0.7696344,
        size.width * 0.001901141,
        size.height * 0.5936297);
    path_0.lineTo(size.width * 0.001901141, size.height * 0.3597516);
    path_0.cubicTo(
        size.width * 0.001901141,
        size.height * 0.1612734,
        size.width * 0.04105513,
        size.height * 0.0003761672,
        size.width * 0.08935361,
        size.height * 0.0003761672);
    path_0.lineTo(size.width * 0.9833726, size.height * 0.0003761672);
    path_0.cubicTo(
        size.width * 0.9886426,
        size.height * -0.0001367048,
        size.width * 0.9935665,
        size.height * -0.0001139441,
        size.width * 0.9980989,
        size.height * 0.0003761672);
    path_0.lineTo(size.width * 0.9833726, size.height * 0.0003761672);
    path_0.cubicTo(
        size.width * 0.9045894,
        size.height * 0.008038609,
        size.width * 0.7475970,
        size.height * 0.1352603,
        size.width * 0.6463878,
        size.height * 0.6097516);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    Paint outsideGlow = paint_0_fill;
    outsideGlow..maskFilter = ui.MaskFilter.blur(BlurStyle.outer, sigma);
    canvas.save();
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.04942966, size.height * 0.06287547),
        Offset(size.width * 0.9714829, size.height * 0.7269375), [
      colors.first.withOpacity(0.8),
      colors.last.withOpacity(0.8)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, outsideGlow);
    canvas.restore();
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

/// Handles the painting of the shape
class LocalShapePainter extends CustomPainter {

  final List<Color> colors;

  LocalShapePainter({required this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6463878, size.height * 0.6097516);
    path_0.cubicTo(
        size.width * 0.5521559,
        size.height * 1.051527,
        size.width * 0.2609365,
        size.height * 1.029656,
        size.width * 0.07542776,
        size.height * 0.9407766);
    path_0.cubicTo(
        size.width * 0.03288563,
        size.height * 0.9203953,
        size.width * 0.001901141,
        size.height * 0.7696344,
        size.width * 0.001901141,
        size.height * 0.5936297);
    path_0.lineTo(size.width * 0.001901141, size.height * 0.3597516);
    path_0.cubicTo(
        size.width * 0.001901141,
        size.height * 0.1612734,
        size.width * 0.04105513,
        size.height * 0.0003761672,
        size.width * 0.08935361,
        size.height * 0.0003761672);
    path_0.lineTo(size.width * 0.9833726, size.height * 0.0003761672);
    path_0.cubicTo(
        size.width * 0.9886426,
        size.height * -0.0001367048,
        size.width * 0.9935665,
        size.height * -0.0001139441,
        size.width * 0.9980989,
        size.height * 0.0003761672);
    path_0.lineTo(size.width * 0.9833726, size.height * 0.0003761672);
    path_0.cubicTo(
        size.width * 0.9045894,
        size.height * 0.008038609,
        size.width * 0.7475970,
        size.height * 0.1352603,
        size.width * 0.6463878,
        size.height * 0.6097516);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.04942966, size.height * 0.06287547),
        Offset(size.width * 0.9714829, size.height * 0.7269375),
        [colors.first.withOpacity(1), colors.last.withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
