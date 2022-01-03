import 'package:amazon_seller_app/UI/financials.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
            Financials(),
          ],
        ),
      ),
    );
  }
}
