import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/models/AgentVoyage.dart';
import 'dart:ui' as ui;
import 'package:tourisme_app_ma/widgets/painters/info_icon_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/ornament_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/pulldown_icon_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/separator_painter.dart';

class InfoSlider extends StatefulWidget {
  final double height;
  final double width;
  final AgentVoyage agentVoyage;
  const InfoSlider(
      {Key? key,
      required this.width,
      required this.agentVoyage,
      required this.height})
      : super(key: key);

  @override
  State<InfoSlider> createState() => _InfoSliderState();
}

class _InfoSliderState extends State<InfoSlider> {

  ScrollController _scrollController = ScrollController();


  String formatAdresse(String adresse){

    int n = adresse.length;
    String formatedAdresse = adresse;

    if (n>29){
      String semiAdresse1 = adresse.substring(0,n ~/ 2);
      String semiAdresse2 = adresse.substring(n ~/ 2, n);
      formatedAdresse = " $semiAdresse1 \n$semiAdresse2";
    }

    return formatedAdresse;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
        clipper: LocalCustomClipper(),
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaY: 15, sigmaX: 18),
          child: CustomPaint(
            size: Size(widget.width, (widget.width * 2).toDouble()),
            painter: LocalCustomPainter(),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 0),
        height: widget.height,
        width: widget.width * 0.98,
        child: ScrollConfiguration(
          behavior: NoOverScrollBehaviour(),
          child: Scrollbar(
            controller: _scrollController,
            interactive: true,
            thickness: 4,
            thumbVisibility: true,
            radius: const Radius.circular(5),
            child: ListView(
                controller: _scrollController,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  Column(
                    /// THIS COLUMN REPRESENTS THE VERTICAL LAYOUT OF THE
                    /// INFO TAB.
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                          /// ICON + AGENCY NAME.
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InfoIcon(
                              width: widget.width / 10,
                            ),
                            SizedBox(
                              width: widget.width / 25,
                            ),
                            SizedBox(
                              width: widget.width * 0.65,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  widget.agentVoyage.nom.toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: "Michroma",
                                      letterSpacing: 5.5,
                                      color: mainDarkColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: widget.width / 25,
                            ),
                            PullDownButton(
                              width: widget.width / 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: widget.height / 15,
                      ),
                      Row(
                        /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                        /// NOM PROVINCE SECTION
                        children: [
                          SizedBox(
                            width: widget.width * 0.95 - 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Ornament(
                                          width: widget.width / 7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: SizedBox(
                                        width: widget.width / 2,
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Nom province:",
                                            style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: widget.width / 3.5,
                                    height: widget.height / 20,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        widget.agentVoyage.nomProv,
                                        style: const TextStyle(
                                          fontFamily: "Michroma",
                                          color: Color(0xFF466779),
                                          letterSpacing: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  child: Separator(
                                    width: widget.width,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: widget.height / 40,
                      ),
                      Row(
                        /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                        /// ADRESSE SECTION
                        children: [
                          SizedBox(
                            width: widget.width * 0.95 - 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Ornament(
                                          width: widget.width / 7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: SizedBox(
                                        width: widget.width / 3,
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Adresse:",
                                            style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: widget.height / 10,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        formatAdresse(widget.agentVoyage.adresse),
                                        style: const TextStyle(
                                          fontFamily: "Michroma",
                                          color: Color(0xFF466779),
                                          letterSpacing: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  child: Separator(
                                    width: widget.width,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: widget.height / 40,
                      ),
                      Row(
                        /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                        /// TEL SECTION
                        children: [
                          SizedBox(
                            width: widget.width * 0.95 - 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Ornament(
                                          width: widget.width / 7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: SizedBox(
                                        width: widget.width / 8,
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Tel:",
                                            style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: widget.width / 2,
                                    height: widget.height / 20,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        widget.agentVoyage.tel == "neant" ? "----" : widget.agentVoyage.tel,
                                        style: const TextStyle(
                                          fontFamily: "Michroma",
                                          color: Color(0xFF466779),
                                          letterSpacing: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  child: Separator(
                                    width: widget.width,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                        /// FAX SECTION
                        children: [
                          SizedBox(
                            width: widget.width * 0.95 - 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Ornament(
                                          width: widget.width / 7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: SizedBox(
                                        width: widget.width / 8,
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Fax:",
                                            style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: widget.width / 2,
                                    height: widget.height / 20,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        widget.agentVoyage.fax == "neant" ? "----" : widget.agentVoyage.fax,
                                        style: const TextStyle(
                                          fontFamily: "Michroma",
                                          color: Color(0xFF466779),
                                          letterSpacing: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  child: Separator(
                                    width: widget.width,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: widget.height / 40,
                      ),
                      Row(
                        /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                        /// SANCTION SECTION
                        children: [
                          SizedBox(
                            width: widget.width * 0.95 - 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Ornament(
                                          width: widget.width / 7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: SizedBox(
                                        width: widget.width / 3,
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Sanctions:",
                                            style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: widget.height / 20,
                                    child: const FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                          fontFamily: "Michroma",
                                          color: Color(0xFF466779),
                                          letterSpacing: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  child: Separator(
                                    width: widget.width,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: widget.height / 2,
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      )
    ]);
  }
}

class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7733645, size.height * 0.003645997);
    path_0.cubicTo(
        size.width * 0.9154206,
        size.height * -0.002442283,
        size.width * 0.9859813,
        size.height * 0.03916088,
        size.width * 1.003505,
        size.height * 0.06072359);
    path_0.lineTo(size.width * 1.003505, size.height * 1.012017);
    path_0.lineTo(size.width * -0.02102804, size.height * 1.012017);
    path_0.lineTo(size.width * -0.02102804, size.height * 0.04778600);
    path_0.cubicTo(
        size.width * -0.02102804,
        size.height * 0.02340822,
        size.width * 0.009307827,
        size.height * 0.003645997,
        size.width * 0.04672897,
        size.height * 0.003645997);
    path_0.lineTo(size.width * 0.7733645, size.height * 0.003645997);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.007009346;
    paint_0_stroke.color = Colors.white.withOpacity(0.53);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0x61EDFCFD).withOpacity(0.38);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

/// This Clipper limits the blur to the shape of the InformationSlider.
/// Without this clipper, the entire screen blurs !
class LocalCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7733645, size.height * 0.003645997);
    path_0.cubicTo(
        size.width * 0.9154206,
        size.height * -0.002442283,
        size.width * 0.9859813,
        size.height * 0.03916088,
        size.width * 1.003505,
        size.height * 0.06072359);
    path_0.lineTo(size.width * 1.003505, size.height * 1.012017);
    path_0.lineTo(size.width * -0.02102804, size.height * 1.012017);
    path_0.lineTo(size.width * -0.02102804, size.height * 0.04778600);
    path_0.cubicTo(
        size.width * -0.02102804,
        size.height * 0.02340822,
        size.width * 0.009307827,
        size.height * 0.003645997,
        size.width * 0.04672897,
        size.height * 0.003645997);
    path_0.lineTo(size.width * 0.7733645, size.height * 0.003645997);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class NoOverScrollBehaviour extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
