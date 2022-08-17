import 'package:flutter/widgets.dart';
import 'package:tourisme_app_ma/models/filter.dart';



class CreateFilterNotification extends Notification{

  final Filter filter;
  const CreateFilterNotification(this.filter);

}
