import 'package:amazon_seller_app/UI/custom_text_field.dart';
import 'package:amazon_seller_app/buttons/custom_button.dart';
import 'package:amazon_seller_app/buttons/custom_card.dart';
import 'package:amazon_seller_app/buttons/headingButton.dart';

import 'package:flutter/material.dart';

class SeoInitials extends StatefulWidget {
  @override
  _SeoInitialsState createState() => _SeoInitialsState();
}

class _SeoInitialsState extends State<SeoInitials> {
  TextEditingController mainController = TextEditingController();
  TextEditingController goldenController = TextEditingController();
  TextEditingController thirdkeywordController = TextEditingController();
  TextEditingController otherKeywordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomHeadingButton('SEO INITIALS'),
              MyCustomTextFieldOutline(
                  wordLength: 30,
                  customController: mainController,
                  hintText: 'Enter Main Keywords (4-MAX)'),
              MyCustomTextFieldOutline(
                wordLength: 14,
                customController: goldenController,
                hintText: 'Enter Golden Keyword',
              ),
              MyCustomTextFieldOutline(
                  customController: thirdkeywordController,
                  hintText: 'Third Keyword (IF Any)',
                  wordLength: 14),
              MyCustomTextFieldOutline(
                  customController: otherKeywordController,
                  hintText: 'Other Keywords',
                  wordLength: 12)
            ],
          ),
        ),
      ],
    );
  }
}
