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

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        Container(
          width: 100,
          height: 100,
          color: const Color(0xFF00C4FF),
        ),
      ]),
    );
  }
}
