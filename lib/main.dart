import 'package:flutter/material.dart';

void main() {
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

class _HomeState extends State<Home> {
  bool isElevated = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
          top: 30,
          left: 30,
          child: GestureDetector(
            onTap: () {
              isElevated = !isElevated;
              setState(() {});
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 70 * 428 / width,
              height: 74 * 926 / height,
              decoration: BoxDecoration(
                  color: const Color(0xFFF1FCFD),
                  borderRadius: BorderRadius.circular(21),
                  boxShadow: !isElevated
                      ? null
                      : const [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(4, 4),
                            blurRadius: 6,
                          ),
                          BoxShadow(
                            color: Color(0xFFFFFFFF),
                            offset: Offset(-4, -4),
                            blurRadius: 5,
                          )
                        ]),
            ),
          ),
        )
      ]),
    );
  }
}
