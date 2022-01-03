// @dart=2.9

import 'package:amazon_seller_app/business_logic/seo_initials.dart';
import 'package:amazon_seller_app/buttons/headingButton.dart';
import 'package:amazon_seller_app/screens/first_screen.dart';

import 'buttons/extraInfoButton.dart';
import 'screens/second_screen.dart';
import 'package:amazon_seller_app/business_logic/primary_details.dart';
import 'package:amazon_seller_app/drop_down/my_dropdown_pubpckg_use.dart';
import 'package:amazon_seller_app/multiple_dropdown_option_changer.dart';
import 'package:flutter/material.dart';
import 'buttons/custom_button.dart';
import 'constants/color_Constants.dart';
import 'package:select_form_field/select_form_field.dart';
import 'drop_down/my_dropdown_field.dart';
import 'dropdown_items_class.dart';
import 'drop_down_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData(
        primarySwatch: kMyThemeColor,
        primaryColor: kMyThemeColor,
        backgroundColor: Color(0xff282D44),
        scaffoldBackgroundColor: Color(0xff282D44),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  Item? selectedUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff31354b),
                Color(0xff0f111a),
              ],
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Amazon FBA Product System',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryDetails(),
            SeoInitials(),
            CustomButton(
              page: SecondScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
