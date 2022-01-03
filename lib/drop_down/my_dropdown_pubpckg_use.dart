import 'package:amazon_seller_app/UI/dropdown_card_ui.dart';
import 'package:amazon_seller_app/constants/color_Constants.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:searchable_dropdown/searchable_dropdown.dart';

class CountryFieldNew extends StatefulWidget {
  @override
  _CountryFieldNewState createState() => _CountryFieldNewState();
}

class _CountryFieldNewState extends State<CountryFieldNew> {
  final List countrys = ["US", 'Uk', 'China', 'Pak'];
  late String selectedCountry;
  Color currentColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dropdown_Card_Ui(
          color: currentColor,
          dropDown: SearchableDropdown.single(
              hint: Text('Please select a Country'),
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

                setState(() {
                  selectedCountry = val;
                });
              }),
        ),
      ],
    );
  }
}
