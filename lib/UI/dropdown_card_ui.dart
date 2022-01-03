import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

// ignore: camel_case_types
class Dropdown_Card_Ui extends StatefulWidget {
  final dropDown;
  Color color;

  Dropdown_Card_Ui({this.dropDown, required this.color});

  @override
  _Dropdown_Card_UiState createState() => _Dropdown_Card_UiState();
}

// ignore: camel_case_types
class _Dropdown_Card_UiState extends State<Dropdown_Card_Ui> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: widget.dropDown,
      ),
    );
  }
}
