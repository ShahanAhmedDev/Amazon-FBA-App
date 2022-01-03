import 'package:flutter/material.dart';

class CountryField extends StatefulWidget {
  @override
  _CountryFieldState createState() => _CountryFieldState();
}

class _CountryFieldState extends State<CountryField> {
  final _formKey = GlobalKey<FormState>();

  final List<String> countrys = ["US", 'Uk', 'China', 'Pak'];

  //List<String> get categories =>
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
  final List<String> avoidedItem = [
    'HAZMAT',
    'Fragile',
    'Weaponry',
    'Lithium-Ion',
    'Avoided ALL'
  ];

  //["1": 'Jewellery',
//  "2": 'Grocery',
//  "3": 'Health & Personal',
//  "4": 'Video Games',
//  "5": 'Toys & Games',
//  "6": 'shoes & Bags',
//  "7": 'Fitness Equipment',
//  "": 'Other',]
//  ;
  //as List<String>
  dynamic _currentCountry;
  dynamic _currentCategorySelected;
  dynamic _currentAvoidedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select a Country of Your Choice:',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                    width: 10.0,
                  ),
                  Container(
//                    width:
//                        50, // used so that the dropdown cannot have limited width. so set a width.
                    child: Expanded(
                      child: new DropdownButton(
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        // used so that render overflow error is not caused. keep it true.
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
                          setState(() {
                            _currentCountry = val;
                          });
                        },
                        value: _currentCountry,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Please Select a Category:',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                    width: 10.0,
                  ),
                  Expanded(
                    child: DropdownButton(
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      isExpanded: true,
                      // used so that render overflow error is not caused. keep it true.
                      items: categories.map(
                        // iterates over a list and shows each item.
                        (category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text('$category'),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(() {
                          _currentCategorySelected = val;
                          print('$_currentCategorySelected');
                        });
                      },
                      value: _currentCategorySelected,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Did Not AVOID:',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                    width: 10.0,
                  ),
                  Expanded(
                    child: DropdownButton(
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      isExpanded: true,
                      // used so that render overflow error is not caused. keep it true.
                      items: avoidedItem.map(
                        // iterates over a list and shows each item.
                        (avoidItem) {
                          return DropdownMenuItem(
                            value: avoidItem,
                            child: Text('$avoidItem'),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(() {
                          _currentAvoidedItem = val;
                          print('$_currentAvoidedItem');
                        });
                      },
                      value: _currentAvoidedItem,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
