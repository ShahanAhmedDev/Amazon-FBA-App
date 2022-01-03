import 'package:amazon_seller_app/UI/dropdown_card_ui.dart';
import 'package:amazon_seller_app/buttons/custom_card.dart';
import 'package:amazon_seller_app/buttons/headingButton.dart';
import 'package:flutter/material.dart';
import 'package:amazon_seller_app/constants/color_Constants.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'dart:convert';

class Financials extends StatefulWidget {
  @override
  _FinancialsState createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  Color profitColor = ConstantColor.kWhite;
  Color bleedingWeeklyColor = ConstantColor.kWhite;
  Color bleedingDailyColor = ConstantColor.kWhite;

  late String selectedProfitValue;
  late int bleedingWeeklyVal;
  late int bleedingDailyVal;

  List profitValue = [25, 50, 75, 100];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CustomHeadingButton('FINANCIALS'),
            Dropdown_Card_Ui(
              color: profitColor,
              dropDown: SearchableDropdown.single(
                  hint: Text(
                    'Please Provide A Profit Margin',
                    style: customTextStyle,
                  ),
                  searchHint: Text("Please Provide A Profit Margin"),
                  isExpanded: true,
                  items: profitValue.map((profit) {
                    return DropdownMenuItem(
                      child: Text('$profit'.toString()),
                      value: profit.toString(),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      if (int.parse(val) == 25) {
                        profitColor = ConstantColor.kRed;
                      } else {
                        profitColor = ConstantColor.kWhite;
                      }
                      selectedProfitValue = val;
                    });
                  }),
            ),
            Dropdown_Card_Ui(
              color: bleedingWeeklyColor,
              dropDown: SearchableDropdown.single(
                hint: Text(
                  'Enter No of GiveAways per 8-Days',
                  style: customTextStyle,
                ),
                searchHint: Text("Enter No of GiveAways per 8-Days"),
                isExpanded: true,
                keyboardType: TextInputType.number,
                items: List.generate(300, (i) {
                  return DropdownMenuItem(child: Text('$i'), value: i);
                }),
                onChanged: (val) {
                  setState(() {
                    bleedingWeeklyColor = (val <= 200)
                        ? ConstantColor.kWhite
                        : ConstantColor.kRed;
                    bleedingWeeklyVal = val;
                  });
                },
              ),
            ),
            Dropdown_Card_Ui(
              color: bleedingDailyColor,
              dropDown: SearchableDropdown.single(
                hint: Text('Enter No of GiveAways per Day',
                    style: customTextStyle),
                searchHint: Text("Enter No of GiveAways per Day"),
                isExpanded: true,
                keyboardType: TextInputType.number,
                items: List.generate(21, (i) {
                  return DropdownMenuItem(child: Text('$i'), value: i);
                }),
                onChanged: (val) {
                  setState(() {
                    bleedingDailyColor =
                        (val < 16) ? ConstantColor.kWhite : ConstantColor.kRed;
                    bleedingDailyVal = val;
                  });
                },
              ),
            )
          ]),
        ),
      ],
    );
  }
}
