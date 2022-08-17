import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/models/AgentVoyage.dart';
import 'dart:ui' as ui;
import 'package:tourisme_app_ma/widgets/painters/info_icon_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/ornament_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/pulldown_icon_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/separator_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/services_glass_panel_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/underliner_painter.dart';
import 'package:tourisme_app_ma/widgets/website_element.dart';

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
  bool servSelected1 = false;
  bool servSelected2 = false;
  bool servSelected3 = false;
  bool servSelected4 = false;
  bool somethingSelected = false;
  bool hotelSelected1 = false;
  bool hotelSelected2 = false;
  bool hotelSelected3 = false;
  bool hotelSelected4 = false;

  String formatAdresse(String adresse) {
    int n = adresse.length;
    String formatedAdresse = adresse;

    if (n > 29) {
      String semiAdresse1 = adresse.substring(0, n ~/ 2);
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
      ClipPath(
        clipper: LocalCustomClipper(),
        child: SizedBox(
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
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Separator(
                                      width: widget.width,
                                    ),
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
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
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
                                    child: SizedBox(
                                      height: widget.height / 10,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Text(
                                          formatAdresse(
                                              widget.agentVoyage.adresse),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Separator(
                                      width: widget.width,
                                    ),
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
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
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
                                          widget.agentVoyage.tel == "neant"
                                              ? "----"
                                              : widget.agentVoyage.tel,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Separator(
                                      width: widget.width,
                                    ),
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
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
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
                                          widget.agentVoyage.fax == "neant"
                                              ? "----"
                                              : widget.agentVoyage.fax,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Separator(
                                      width: widget.width,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 40,
                        ),
                        SizedBox(
                          height: widget.height / 40,
                        ),
                        Row(
                          /// THIS ROW REPRESENTS THE HORIZONTAL LAYOUT OF THE
                          /// SERVICES SECTION
                          children: [
                            SizedBox(
                              width: widget.width * 0.95 - 10,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
                                        child: SizedBox(
                                          width: widget.width / 3,
                                          child: const FittedBox(
                                            fit: BoxFit.fitWidth,
                                            child: Text(
                                              "Services:",
                                              style: TextStyle(
                                                  fontFamily: "Michroma",
                                                  color: Color(0xFF466779)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: widget.width / 8,
                                ),
                                SizedBox(
                                  width: widget.width / 2,
                                  child: const FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "Voyages Organisés",
                                      style: TextStyle(
                                        fontFamily: "Michroma",
                                        color: Color(0xFF466779),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: widget.height / 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Underliner(width: widget.width / 2.2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 30,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: widget.width / 12,
                              ),
                              Column(
                                children: [
                                  // BOX 0,0
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!servSelected2 &&
                                                !servSelected3 &&
                                                !servSelected4)
                                            ? servSelected1 = !servSelected1
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: servSelected1
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: servSelected1
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          image: DecorationImage(
                                            opacity: servSelected1 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours1.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.78),
                                              width: 3,
                                              strokeAlign:
                                                  StrokeAlign.outside)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected1 ? -200 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x99774038),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected1 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Michroma",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "LE TRIO ITALIEN\n"),
                                                      TextSpan(
                                                        text:
                                                            "Venice | Florence | Rome",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Michroma",
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: widget.height / 50,
                                  ),
                                  // BOX 0,1
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!servSelected1 &&
                                                !servSelected3 &&
                                                !servSelected4)
                                            ? servSelected2 = !servSelected2
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: servSelected2
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: servSelected2
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          image: DecorationImage(
                                            opacity: servSelected2 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours2.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected2 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x66006DE7),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected2 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Michroma",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "COMBINE"),
                                                      TextSpan(
                                                        text: " Istanbul\n",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Michroma",
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            " & Sharam El Sheikh",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Michroma",
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: widget.width / 6,
                              ),
                              Column(
                                children: [
                                  // BOX 1,0
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!servSelected1 &&
                                                !servSelected2 &&
                                                !servSelected4)
                                            ? servSelected3 = !servSelected3
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: servSelected3
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: servSelected3
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            opacity: servSelected3 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours3.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected3 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x8084D1ED),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected3 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Michroma",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "VOYAGE ORGANISÉ \n"),
                                                      TextSpan(
                                                        text:
                                                            " vers Dakhla 2022",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Michroma",
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: widget.height / 50,
                                  ),
                                  // BOX 1,1
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!servSelected1 &&
                                                !servSelected2 &&
                                                !servSelected3)
                                            ? servSelected4 = !servSelected4
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: servSelected4
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: servSelected4
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                          image: DecorationImage(
                                            opacity: servSelected4 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours4.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected4 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x66BA753E),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: servSelected4 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Michroma",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "AGADIR: ",
                                                      ),
                                                      TextSpan(
                                                        text: "Plage,\n",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              "Michroma",
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            " vers Dakhla 2022",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              "Michroma",
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  // BOX 1,1
                                ],
                              ),
                              SizedBox(
                                width: widget.width / 12,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: widget.height / 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: widget.width / 8,
                                ),
                                SizedBox(
                                  width: widget.width / 4.5,
                                  child: const FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "Hotels",
                                      style: TextStyle(
                                        fontFamily: "Michroma",
                                        color: Color(0xFF466779),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: widget.height / 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Underliner(width: widget.width / 4),
                            )
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 30,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: widget.width / 12,
                              ),
                              Column(
                                children: [
                                  // BOX 0,0
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!hotelSelected2 &&
                                            !hotelSelected3 &&
                                            !hotelSelected4)
                                            ? hotelSelected1 = !hotelSelected1
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                      const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: hotelSelected1
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: hotelSelected1
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            opacity: hotelSelected1 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours_hotel1.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(
                                              color:
                                                  Colors.white.withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.outside)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected1 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x4D3946F3),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected1 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Michroma",
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "\nAGADIR WELL\n"),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: widget.height / 50,
                                  ),
                                  // BOX 0,1
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!hotelSelected1 &&
                                            !hotelSelected2 &&
                                            !hotelSelected4)
                                            ? hotelSelected3 = !hotelSelected3
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                      const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: hotelSelected3
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: hotelSelected3
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            opacity: hotelSelected3 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours_hotel3.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(
                                              color:
                                                  Colors.white.withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected3 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x4DF5CD9A),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected3 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.9 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 2),
                                              child: FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Michroma",
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text:
                                                                "AGADIR BEACH\n CLUB"),
                                                      ]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: widget.width / 6,
                              ),
                              Column(
                                children: [
                                  // BOX 1,0
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!hotelSelected1 &&
                                            !hotelSelected3 &&
                                            !hotelSelected4)
                                            ? hotelSelected2 = !hotelSelected2
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                      const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: hotelSelected2
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: hotelSelected2
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            opacity: hotelSelected2 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours_hotel2.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(
                                              color:
                                                  Colors.white.withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected2 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x66168580),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected2 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.8 / 2.2,
                                            height: widget.height / 21.7,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 4),
                                              child: FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Michroma",
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text:
                                                                "RIU PALACE\n Tikida Agadir"),
                                                      ]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: widget.height / 50,
                                  ),
                                  // BOX 1,1
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        (!hotelSelected1 &&
                                            !hotelSelected2 &&
                                            !hotelSelected3)
                                            ? hotelSelected4 = !hotelSelected4
                                            : null;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                      const Duration(milliseconds: 200),
                                      alignment: Alignment.bottomCenter,
                                      width: hotelSelected4
                                          ? widget.width * 1.3 / 2.2
                                          : widget.width / 2.2,
                                      height: hotelSelected4
                                          ? widget.height * 1.3 / 9
                                          : widget.height / 9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            opacity: hotelSelected4 ? 1 : 0.7,
                                            image: const AssetImage(
                                                "assets/images/prototype/alltours_hotel4.jpeg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(
                                              color:
                                                  Colors.white.withOpacity(0.78),
                                              width: 3,
                                              strokeAlign: StrokeAlign.center)),
                                      child: Stack(children: [
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected4 ? -100 : 0,
                                          child: ServicesGlassPanel(
                                            color: const Color(0x800DB4B9),
                                            width: widget.width / 2.2,
                                          ),
                                        ),
                                        AnimatedPositioned(
                                          duration: const Duration(milliseconds: 500),
                                          bottom: hotelSelected4 ? -100 : 0,
                                          child: Container(
                                            width: widget.width * 0.95 / 2.2,
                                            height: widget.height / 22,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Michroma",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text:
                                                              "MARRAKESH\nHUA HIN: ",
                                                        ),
                                                        TextSpan(
                                                          text: "Resort & Spa,\n",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Michroma",
                                                            fontWeight:
                                                                FontWeight.normal,
                                                          ),
                                                        ),
                                                      ]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  // BOX 1,1
                                ],
                              ),
                              SizedBox(
                                width: widget.width / 12,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: widget.width / 6,
                        ),
                        SizedBox(
                          height: widget.height / 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: widget.width / 8,
                                ),
                                SizedBox(
                                  width: widget.width / 1.7,
                                  child: const FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "Voyages sur mesure",
                                      style: TextStyle(
                                        fontFamily: "Michroma",
                                        color: Color(0xFF466779),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: widget.height / 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Underliner(width: widget.width / 4),
                            )
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 30,
                        ),
                        WebsiteContainer(
                          width: widget.width * 0.72,
                          height: widget.height / 22,
                        ),
                        SizedBox(
                          height: widget.height / 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: Separator(
                            width: widget.width,
                          ),
                        ),
                        SizedBox(
                          height: widget.height / 30,
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
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 3),
                                        child: SizedBox(
                                          width: widget.width / 2.5,
                                          child: const FittedBox(
                                            fit: BoxFit.fitWidth,
                                            child: Text(
                                              "SANCTIONS:",
                                              style: TextStyle(
                                                fontFamily: "Michroma",
                                                color: Color(0xFF466779),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: widget.height / 18,
                                      width: widget.width / 9,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: mainDarkColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Text(
                                          widget.agentVoyage.sanct.toString(),
                                          style: const TextStyle(
                                            fontFamily: "Michroma",
                                            color: Color(0xFF466779),
                                            letterSpacing: 10,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Separator(
                                      width: widget.width,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: widget.height / 2.2,
                        ),
                      ],
                    ),
                  ]),
            ),
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
