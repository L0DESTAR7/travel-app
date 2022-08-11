import 'package:flutter/widgets.dart';
import 'package:tourisme_app_ma/models/filter.dart';



class DeleteFilterNotification extends Notification{

  final Filter filter;
  const DeleteFilterNotification(this.filter);

}