import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class Bienvenu extends StatefulWidget {
  const Bienvenu({Key? key}) : super(key: key);

  @override
  State<Bienvenu> createState() => _BienvenuState();
}

class _BienvenuState extends State<Bienvenu> {
  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.asset(
      "assets/Rive/bienvenu.riv",
      animations: ["Bienvenu IN"],
      antialiasing: true,
      fit: BoxFit.fill,
    );
  }
}
