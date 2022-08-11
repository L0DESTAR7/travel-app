import 'package:flutter/material.dart';

import '../models/notifications/search_changed_notification.dart';

class SearchField extends StatefulWidget {

  final TextEditingController controller;

  const SearchField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {

  SearchChangeNotification changeNotification = SearchChangeNotification();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (input){
        changeNotification.dispatch(context);
      },
      maxLines: 1,
      expands: false,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 5, 8),
          border: InputBorder.none,
          hintText: "Rechercher..."),
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF000000),
        fontFamily: "Gruppo",
        letterSpacing: 0.05 * 16,
      ),
    );
  }
}

