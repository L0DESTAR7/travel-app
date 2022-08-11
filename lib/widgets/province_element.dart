import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/models/notifications/create_filter_notification.dart';
import '../const/color_const.dart';
import '../models/filter.dart';


class ProvinceElement extends StatefulWidget {

  final double width;
  final Color color;
  final Color selectedColor;
  final String provName;
  const ProvinceElement({Key? key, required this.width, required this.color, required this.selectedColor, required this.provName}) : super(key: key);

  @override
  State<ProvinceElement> createState() => _ProvinceElementState();
}

class _ProvinceElementState extends State<ProvinceElement> {

  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        setState((){
          _selected = true;
        });
      },
      onTapUp: (details){
        Future.delayed(const Duration(milliseconds: 100),(){
          setState((){
            _selected = false;
          });
        });
      },
      onTap: (){
        print("CREATING FILTER OBJECT...");
        Filter provFilter = Filter(value: widget.provName, type: FilterType.provName);
        print("FILTER OBJECT CREATED!");
        print("SENDING FILTER OBJECT TO MAIN FILE...");
        CreateProvNameFilterNotification filterNotification = CreateProvNameFilterNotification(provFilter);
        filterNotification.dispatch(context);
      },
      child: Container(
        color: _selected ? widget.selectedColor : widget.color,
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Text(
          widget.provName,
          style: TextStyle(
            fontFamily: "Michroma",
            color: mainDarkColor,
            fontSize: 16,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}



