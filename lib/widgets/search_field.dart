import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {



  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
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
