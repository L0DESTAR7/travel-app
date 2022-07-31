import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';

class Details extends StatefulWidget {
  const Details({
    Key? key,
    required this.xFactor,
    required this.yFactor,
  }) : super(key: key);

  final double xFactor;
  final double yFactor;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  bool isPressed = false;

  void detailsPressed(){
    isPressed = true;
    setState((){

    });
    Future.delayed(const Duration(milliseconds: 200),(){
      setState((){
        isPressed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        detailsPressed();
      },
      child: Container(
        alignment: Alignment.center,
        width: 92 * widget.xFactor,
        height: 35 * widget.yFactor,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17 * widget.yFactor),
            color: const Color(0xFFEFFCFD),
            border: Border.all(color: Colors.white, width: 1),
            boxShadow: isPressed ? null : [
              const BoxShadow(
                color: Color(0x40000000),
                offset: Offset(2, 2),
                blurRadius: 3,
              ),
              const BoxShadow(
                color: Color(0xE0FFFFFF),
                offset: Offset(-2, -2),
                blurRadius: 4,
              )
            ]),
        child: Text(
          "Détails",
          style: TextStyle(
            fontSize: 20 * widget.xFactor,
            fontWeight: FontWeight.bold,
            fontFamily: "Gruppo",
            color: mainDarkColor,
          ),
        ),
      ),
    );
  }
}
