import 'package:amazon_seller_app/buttons/custom_card.dart';
import 'package:amazon_seller_app/buttons/headingButton.dart';
import 'package:amazon_seller_app/constants/color_Constants.dart';

import '../buttons/custom_button.dart';
import 'package:amazon_seller_app/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'dropdown_card_ui.dart';
import 'dart:convert';

class SuitabilityTab extends StatefulWidget {
  @override
  _SuitabilityTabState createState() => _SuitabilityTabState();
}

class _SuitabilityTabState extends State<SuitabilityTab> {
  Color shippingColor = ConstantColor.kWhite;
  Color weightColor = ConstantColor.kWhite;
  Color sellerTypeColor = ConstantColor.kWhite;
  Color ratingColor = ConstantColor.kWhite;
  Color variantColor = ConstantColor.kWhite;
  List shippingTier = [
    'Small Standard',
    'Large Standard',
    'Small Oversized',
    'Large Oversized',
    'Special Oversized'
  ];
  List weightType = ['<5', '5', '10', '>10'];
  List sellerType = ['FBA', 'FBM', 'AMZ'];
  List<dynamic> ratings = [1, 2, 2.5, 3, 3.5, 4, 4.5, 5];
  List noOfVariants = ['Single', 'Two', 'Three', 'Multiple'];
  late String selectedSellerType;
  late String selectedShippingTier;
  late String selectedWeight;
  late String selectedRating;
  late String selectedVariant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomHeadingButton('SUITABILITY'),
              Dropdown_Card_Ui(
                color: shippingColor,
                dropDown: SearchableDropdown.single(
                    hint: Text('Please select Shipping Tier Standard',
                        style: customTextStyle),
                    searchHint: Text("Please select Shipping Tier Standard"),
                    isExpanded: true,
                    items: shippingTier.map(
                      (tier) {
                        return new DropdownMenuItem(
                          child: Text('$tier'),
                          value: tier,
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
//                  if (val == 'Small Oversized' ||
//                      val == 'Large Oversized' ||
//                      val == 'Special Oversized') {
//                    color = Colors.redAccent;
//                  } else if (val == 'Small Standard' ||
//                      val == 'Large Standard') {
//                    color = Colors.white70;
//
//
//                  }
                        shippingColor = (val == 'Small Oversized' ||
                                val == 'Large Oversized' ||
                                val == 'Special Oversized')
                            ? ConstantColor.kRed
                            : ConstantColor.kWhite;
                        selectedShippingTier = val;
                      });
                    }),
              ),
              Dropdown_Card_Ui(
                color: sellerTypeColor,
                dropDown: SearchableDropdown.single(
                    hint: Text('Please select Seller Type',
                        style: customTextStyle),
                    searchHint: Text("Please select Seller Type"),
                    isExpanded: true,
                    items: sellerType.toList().map((type) {
                      return new DropdownMenuItem(
                        child: Text('$type'),
                        value: type,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        sellerTypeColor = (val == 'AMZ' || val == 'FBM')
                            ? ConstantColor.kRed
                            : ConstantColor.kWhite;
                        selectedSellerType = val;
                      });
                    }),
              ),
              Dropdown_Card_Ui(
                color: weightColor,
                dropDown: SearchableDropdown.single(
                    hint: Text('Please Select Product Weight',
                        style: customTextStyle),
                    searchHint: Text("Please Select Product Weight"),
                    isExpanded: true,
                    items: weightType.map((weight) {
                      return DropdownMenuItem(
                        child: Text('$weight'),
                        value: weight,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        weightColor = (val == '10' || val == '>10')
                            ? ConstantColor.kRed
                            : ConstantColor.kWhite;
                        selectedWeight = val;
                      });
                    }),
              ),
              Dropdown_Card_Ui(
                color: ratingColor,
                dropDown: SearchableDropdown.single(
                    dialogBox: true,
                    keyboardType: TextInputType.number,
                    hint: Text('Please select Product Ratings',
                        style: customTextStyle),
                    searchHint: Text("Please select Product Ratings"),
                    isExpanded: true,
                    items: ratings.toList().map((rate) {
                      return DropdownMenuItem(
                        child: Text('$rate'.toString()),
                        value: rate.toString(),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        if (double.parse(val) <= 3.5) {
                          ratingColor = ConstantColor.kRed;
                        } else {
                          ratingColor = ConstantColor.kWhite;
                        }
                        selectedRating = val;
                      });
                    }),
              ),
              Dropdown_Card_Ui(
                color: variantColor,
                dropDown: SearchableDropdown.single(
                    hint: Text('Please Select No of Variants',
                        style: customTextStyle),
                    searchHint: Text("Please Select No of Variants"),
                    isExpanded: true,
                    items: noOfVariants.map((variant) {
                      return DropdownMenuItem(
                        child: Text('$variant'),
                        value: variant,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        variantColor = (val == 'Multiple')
                            ? ConstantColor.kRed
                            : ConstantColor.kWhite;
                        selectedWeight = val;
                      });
                    }),
              ),
              CustomButton(page: ThirdScreen()),
            ],
          ),
        ),
      ],
    );
  }
}
