import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/app/init.dart';
import 'package:tourisme_app_ma/app/app.dart';


void main() async {

  
  WidgetsFlutterBinding.ensureInitialized();

  Initializer.lockToPortraitMode();

  runApp(TourismApp(
    list: await Initializer.initializeAgents(),
  ));
}