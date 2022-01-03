// this will have the first Section of the APP i.e Primary Details.
import 'package:amazon_seller_app/UI/dropdown_card_ui.dart';
import 'package:amazon_seller_app/buttons/custom_card.dart';
import 'package:amazon_seller_app/buttons/headingButton.dart';
import 'package:amazon_seller_app/constants/color_Constants.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:searchable_dropdown/searchable_dropdown.dart';

import '../buttons/extraInfoButton.dart';

class PrimaryDetails extends StatefulWidget {
  @override
  _PrimaryDetailsState createState() => _PrimaryDetailsState();
}

class _PrimaryDetailsState extends State<PrimaryDetails> {
  final List countrys = ["US", 'Uk', 'China', 'Pak'];
  final List<String> categories = [
    'Jewellery',
    'Grocery',
    'Health & Personal',
    'Video Games',
    'Toys & Games',
    'shoes & Bags',
    'Fitness Equipment',
    'Other',
  ];
  final List<String> avoidItems = [
    'Hazmat',
    'Fragile',
    'Lithium-Ion Batteries',
    'Weaponry',
    'Avoided All'
  ];

  late String selectedCountry;
  late String selectedCategory;
  late String selectedAvoidedItem;
  Color currentColor = ConstantColor.kWhite;
  Color categoryColor = ConstantColor.kWhite;
  Color avoidedItemColor = ConstantColor.kWhite;
  Paint checkPaint = Paint()..shader = linearGradient;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomHeadingButton('PRIMARY DETAILS'),
          Dropdown_Card_Ui(
            color: currentColor,
            dropDown: SearchableDropdown.single(
                hint: Text('Please select a Country', style: customTextStyle),
                searchHint: Text("Select a Country"),
                isExpanded: true,
                items: countrys.map(
                  // iterates over a list and shows each item.
                  (country) {
                    return new DropdownMenuItem(
                      value: country,
                      child: Text('$country'),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  if (val == 'China') {
                    currentColor = Colors.redAccent;
                  } else if (val != "China") {
                    currentColor = Colors.white70;
                  }

                  setState(
                    () {
                      selectedCountry = val;
                    },
                  );
                }),
          ),
          Dropdown_Card_Ui(
            color: categoryColor,
            dropDown: SearchableDropdown.single(
                hint: Text('Please select a Category', style: customTextStyle),
                searchHint: Text("Select a Category"),
                isExpanded: true,
                items: categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text('$category'),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
//                  if(val == 'Jewellery'){
//                    categoryColor = Colors.redAccent;
//                  }
//                  else if (val != 'Jewellery'){
//                    categoryColor = Colors.white70;
//                  }
                    categoryColor = (val == 'Jewellery')
                        ? Colors.redAccent
                        : Colors.white70;
                    selectedCategory = val;
                  });
                }),
          ),
          Dropdown_Card_Ui(
            color: avoidedItemColor,
            dropDown: SearchableDropdown.single(
                doneButton: extraInfoButton(
                  dialogTitle: 'Avoid Items',
                  dialogContent:
                      'Please avoid all items in the list for maximum profit.',
                ),
                dialogBox: true,
                hint:
                    Text('Please select Avoided Items', style: customTextStyle),
                searchHint: Text("Please select Avoided Items"),
                isExpanded: true,
                items: avoidItems.map((item) {
                  return DropdownMenuItem(child: Text('$item'), value: item);
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    avoidedItemColor = (val == 'Avoided All')
                        ? Colors.white70
                        : Colors.redAccent;
                    selectedAvoidedItem = val;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
