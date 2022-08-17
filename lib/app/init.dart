import 'dart:math';
import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import 'package:tourisme_app_ma/const/filter_values.dart';
import 'package:tourisme_app_ma/models/AgentVoyage.dart';



/// Static class that handles all the initializations and the data needed by the
/// app before starting.
///
/// Put any data initialization process here as a separate static method.
class Initializer {

  Initializer._();


  /// Locks the screen to portrait mode. The app currently doesn't support
  /// landscape mode and doesn't intend to do so anytime soon!
  static lockToPortraitMode() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  /// Loads Travel agencies as byte data and maps the data to the according
  /// object fields.
  static Future<List<AgentVoyage>> initializeAgents() async {
    ByteData data = await rootBundle.load("assets/lists/listeAV.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);
    List<AgentVoyage> list = [];
    for (var table in excel.tables.keys) {
      int i = 0;
      for (var row in excel.tables[table]!.rows) {
        if (i == 0) {
          i++;
          continue;
        }
        try {
          list.add(AgentVoyage(
              nom: row[1]?.value,
              nomProv: row[0]?.value,
              adresse: row[2]?.value,
              tel: row[3]?.value,
              fax: row[4]?.value ?? "",
              sanct: Random().nextInt(4),
              index: i));

          // This portion is for retrieving the unique values of province names.
          if (!FilterValuesProvider.provinces.contains(row[0]?.value)) {
            FilterValuesProvider.provinces.add(row[0]?.value);
            print("NEW PROVINCE NAME ADDED: ${row[0]?.value}");
          }
          i++;
        } catch (e) {
          print(e);
          print(
              '${row[0]?.value} | ${row[1]?.value} | ${row[2]?.value} | ${row[3]?.value} | ${row[4]?.value}');
        }
      }
    }
    return list;
  }

}