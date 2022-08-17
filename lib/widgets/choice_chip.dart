import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/models/notifications/delete_filter_notification.dart';
import '../models/filter.dart';

class CustomChoiceChip extends StatelessWidget {
  final double width;
  final double height;
  final Filter filter;

  const CustomChoiceChip({Key? key, required this.height, required this.width, required this.filter})
      : super(key: key);

  String makeFilterTitle(Filter filter){

    if (filter.type == FilterType.provName){
      return (filter.value+" "*(filter.value.length + 2));
    }


    return "≤ ${filter.value} sanct.${"   "*(filter.value.length + 2)}";
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: const Color(0xFFECFBFC),
              borderRadius: BorderRadius.circular(0.64 * height),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26000000),
                  offset: Offset(4, 4),
                  blurRadius: 7,
                ),
                BoxShadow(
                  color: Color(0xBFFFFFFF),
                  offset: Offset(-3, -3),
                  blurRadius: 4,
                ),
              ]),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                makeFilterTitle(filter),
                style: TextStyle(
                  color: mainDarkColor,
                  fontFamily: "Michroma",
                  letterSpacing: 3,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: (){
              // TODO: IMPLEMENT FILTER DELETION.
              print("DELETE FILTER...");
              DeleteFilterNotification deleteFilterNotification = DeleteFilterNotification(filter);
              deleteFilterNotification.dispatch(context);
            },
            child: CustomPaint(
              size: Size(width*0.4, (height).toDouble()),
              painter: LocalCustomPainter(),
            ),
          ),
        ),
        Positioned(
          right: width/12,
          top: height/3.5,
          child: CustomPaint(
            size: Size(width*0.18, (height/3).toDouble()),
            painter: CrossSignCustomPainter(),
          ),
        ),
      ],
    );
  }
}



class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.3991531,size.height*0.9668333);
    path_0.lineTo(size.width*0.4012438,size.height*0.9722222);
    path_0.lineTo(size.width*0.4062500,size.height*0.9722222);
    path_0.lineTo(size.width*0.5781250,size.height*0.9722222);
    path_0.cubicTo(size.width*0.7981750,size.height*0.9722222,size.width*0.9765625,size.height*0.7608000,size.width*0.9765625,size.height*0.5000000);
    path_0.cubicTo(size.width*0.9765625,size.height*0.2391989,size.width*0.7981750,size.height*0.02777778,size.width*0.5781250,size.height*0.02777778);
    path_0.lineTo(size.width*0.04687500,size.height*0.02777778);
    path_0.lineTo(size.width*0.03468188,size.height*0.02777778);
    path_0.lineTo(size.width*0.03977750,size.height*0.04090667);
    path_0.lineTo(size.width*0.3991531,size.height*0.9668333);
    path_0.close();

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.04;
    paint_0_stroke.color=Color(0xffF06778).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_0,paint_0_stroke);

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffE79B9B).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}





class CrossSignCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.7272727,size.height*0.2727273);
    path_0.lineTo(size.width*0.2727273,size.height*0.7272727);
    path_0.moveTo(size.width*0.7272727,size.height*0.7272727);
    path_0.lineTo(size.width*0.2727273,size.height*0.2727273);

    Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01818182;
    paint_0_stroke.color=Colors.white.withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_0,paint_0_stroke);


    Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.04545455;
    paint_1_stroke.color=Colors.white.withOpacity(1.0);
    canvas.drawCircle(Offset(size.width*0.5000000,size.height*0.5000000),size.width*0.4318182,paint_1_stroke);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


