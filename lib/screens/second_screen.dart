import 'package:amazon_seller_app/UI/suitability.dart';
import 'package:amazon_seller_app/constants/color_Constants.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
//        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF141e30), Color(0xFF243b55)])),
        ),
//        elevation: 0,
//        backgroundColor: Colors.transparent,
        title: Text('Amazon FBA Product System'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SuitabilityTab(),
          ],
        ),
      ),
    );
  }
}
