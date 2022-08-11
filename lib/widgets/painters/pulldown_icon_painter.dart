import 'package:flutter/material.dart';

import '../../models/notifications/pull_down_notification.dart';




class PullDownButton extends StatelessWidget {

  final double width;
  PullDownNotification pullDownNotification = PullDownNotification();
  PullDownButton({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pullDownNotification.dispatch(context);
      },
      child: Container(
        alignment: Alignment.center,
        width: width * 1.5,
        height:  width * 1.5,
        child: CustomPaint(
          size: Size(width, (width*0.6071428571428571).toDouble()),
          painter: LocalCustomPainter(),
        ),
      ),
    );
  }
}


class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.03571429,size.height*0.1176471);
    path_0.lineTo(size.width*0.5000000,size.height*0.8823529);
    path_0.lineTo(size.width*0.9642857,size.height*0.1176471);

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.07142857;
    paint_0_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_stroke);



    Path path_1 = Path();
    path_1.moveTo(size.width*0.2142857,size.height*0.05882353);
    path_1.lineTo(size.width*0.5000000,size.height*0.5294118);
    path_1.lineTo(size.width*0.7857143,size.height*0.05882353);

    Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
    paint_1_stroke.color=const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_stroke);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

