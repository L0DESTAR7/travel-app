import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/widgets/bienvenu.dart';
import 'package:tourisme_app_ma/widgets/list_element.dart';
import 'package:tourisme_app_ma/widgets/painters/logo_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/search_icon_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/searchbar_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/underliner_painter.dart';
import 'package:tourisme_app_ma/widgets/search_line.dart';
import 'package:tourisme_app_ma/widgets/spinning_decoration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const TourismApp());
}

class TourismApp extends StatefulWidget {
  const TourismApp({Key? key}) : super(key: key);

  @override
  State<TourismApp> createState() => _TourismAppState();
}

class _TourismAppState extends State<TourismApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double xFactor = width / 428;
    double yFactor = height / 926;
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFF0FDFF), Color(0xFFFFFFFF)],
                    begin: Alignment(0, 0.4),
                    end: Alignment(2, 0.2))),
          ),
          Positioned(
              top: 30 * yFactor,
              left: 25 * xFactor,
              child: Container(
                width: 78 * xFactor,
                height: 80 * yFactor,
                decoration: BoxDecoration(
                    color: const Color(0xfff1fcfd),
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: [
                      BoxShadow(
                        color: genericShadowColor,
                        offset: Offset(4 * xFactor, 4 * yFactor),
                        blurRadius: 6,
                      ),
                      BoxShadow(
                        color: const Color(0xFFFFFFFF),
                        offset: Offset(-4 * xFactor, -4 * yFactor),
                        blurRadius: 5,
                      )
                    ]),
              )),
          Positioned(
            top: 35 * yFactor,
            left: 40 * xFactor,
            child: SizedBox(
              width: 50 * xFactor,
              height: 50 * yFactor,
              child: Logo(width: width),
            ),
          ),
          Positioned(
              top: 92 * yFactor,
              left: 40 * xFactor,
              child: const Text(
                "MAROC",
                style: TextStyle(
                  color: Color(0xFF313131),
                  fontSize: 10,
                  letterSpacing: 2.5,
                  fontFamily: "Gruppo",
                ),
              )),
          Positioned(
            top: 50 * yFactor,
            left: 120 * xFactor,
            child: const Text(
              "AGENTS DE VOYAGES",
              style: TextStyle(
                  color: mainDarkColor,
                  fontFamily: "Michroma",
                  fontSize: 14,
                  letterSpacing: 3.57),
            ),
          ),
          Positioned(
            top: 80 * yFactor,
            left: 150 * xFactor,
            child: const Underliner(width: 200),
          ),
          Positioned(
            top: 0.262 * height * yFactor -
                (276 / 2), // Subtract distance to center of widget
            right: -125 * xFactor,
            child: SpinningDecoration(width: width),
          ),
          Positioned(
            top: 0.285 * height * yFactor,
            right: -5,
            child: SearchBar(
              xFactor: xFactor,
              yFactor: yFactor,
            ),
          ),
          Positioned(
            top: 0.2 * height * yFactor,
            left: 0.05 * width * xFactor,
            width: 270 * xFactor,
            height: 50 * yFactor,
            child: const Bienvenu(),
          ),
          Align(
            alignment: Alignment.center,
            child: ListElement(yFactor: yFactor, xFactor: xFactor),
          ),
        ]),
      ),
    );
  }
}
