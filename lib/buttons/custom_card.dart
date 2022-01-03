import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  Widget child;

  CustomCard(this.child);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white12,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.zero),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff0f111a),
            Color(0xff31354b),
          ]),
          boxShadow: [
            BoxShadow(color: Color(0xff31354b), spreadRadius: 1),
          ],
          //Color(0xff31354b) ligher theme color, checking if only 1 darker color looks better or not.
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: child,
        ),
      ),
    );
  }
}
