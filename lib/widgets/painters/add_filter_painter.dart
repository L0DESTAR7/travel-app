import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/const/filter_values.dart';
import 'package:tourisme_app_ma/models/notifications/create_filter_notification.dart';
import 'package:tourisme_app_ma/models/notifications/open_filter_menu_notification.dart';
import 'package:tourisme_app_ma/widgets/sanct_filter_element.dart';
import 'package:tourisme_app_ma/widgets/painters/triangle_painter.dart';

import '../province_element.dart';

class AddFilter extends StatefulWidget {
  final double width;
  final double height;
  final double plusSignWidth;
  const AddFilter(
      {Key? key,
      required this.width,
      required this.height,
      required this.plusSignWidth})
      : super(key: key);

  @override
  State<AddFilter> createState() => _AddFilterState();
}

class _AddFilterState extends State<AddFilter> {
  bool openFilters = false;
  OpenFilterNotification openFilterNotification =
      OpenFilterNotification(stateBool: false);
  ScrollController _provListScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    openFilterNotification.stateBool = openFilters;
  }

  List<ProvinceElement> createProvinceElements(
      double width_, Color color_, Color selectedColor_) {
    List<ProvinceElement> provElementlist = [];
    FilterValuesProvider.provinces.forEach((element) {
      provElementlist.add(ProvinceElement(
        width: width_,
        color: color_,
        selectedColor: selectedColor_,
        provName: element,
      ));
    });
    return provElementlist;
  }

  void closeFilters() {
    setState(() {
      openFilters = !openFilters;
      openFilterNotification.stateBool = openFilters;
      openFilterNotification.dispatch(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Colors.transparent,
        width: 5,
      ))),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: widget.plusSignWidth / 12,
            height: widget.plusSignWidth / 12,
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                closeFilters();
              },
              child: CustomPaint(
                size:
                    Size(widget.plusSignWidth / 20, widget.plusSignWidth / 20),
                painter: LocalCustomPainter(),
              ),
            ),
          ),
          NotificationListener<CreateFilterNotification>(
            onNotification: (notification) {
              closeFilters();
              return false;
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: widget.width / 2,
              height: widget.height - 10,
              decoration: BoxDecoration(
                color:
                    openFilters ? const Color(0x80F3FFFF) : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: openFilters ? mainDarkColor : Colors.transparent,
                  strokeAlign: StrokeAlign.outside,
                  width: 0.8,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: openFilters
                    ? ListView(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        children: openFilters
                            ? [
                                SanctFilterElement(
                                  width: widget.width / 3,
                                  maxSanct: 0,
                                ),
                                SanctFilterElement(
                                  width: widget.width / 3,
                                  maxSanct: 1,
                                ),
                                SanctFilterElement(
                                  width: widget.width / 3,
                                  maxSanct: 2,
                                ),
                                SanctFilterElement(
                                  width: widget.width / 3,
                                  maxSanct: 3,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: widget.width,
                                  height: widget.height / 4,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: mainDarkColor,
                                        width: 1,
                                        strokeAlign: StrokeAlign.outside,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Text(
                                            "Provinces",
                                            style: TextStyle(
                                              fontFamily: "Michroma",
                                              color: mainDarkColor,
                                              fontSize: 16,
                                              letterSpacing: 3,
                                            ),
                                          ),
                                          Triangle(width: 15, height: 10),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: widget.height / 5.2,
                                        width: widget.width,
                                        child: RawScrollbar(
                                          thumbColor: const Color(0x80466879),
                                          controller: _provListScrollController,
                                          trackVisibility: true,
                                          radius: const Radius.circular(2),
                                          thumbVisibility: true,
                                          child: SingleChildScrollView(
                                            controller:
                                                _provListScrollController,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: createProvinceElements(
                                                  widget.width,
                                                  Colors.transparent,
                                                  const Color(0x80A8D8F3)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                            : [],
                      )
                    : const SizedBox(
                        width: 1,
                        height: 1,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LocalCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    paint_0_stroke.color = const Color(0xff466779).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.4687500, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2608644, size.height * 0.5019969);
    path_1.lineTo(size.width * 0.7431188, size.height * 0.5019969);
    path_1.moveTo(size.width * 0.5019919, size.height * 0.3);
    path_1.lineTo(size.width * 0.5019919, size.height * 0.7);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03125000;
    paint_1_stroke.color = const Color(0xff466779).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
