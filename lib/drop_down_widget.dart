import 'package:flutter/material.dart';

class FormDropDown extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormDropDown> {
  final _formkey = GlobalKey<FormState>();
  final List<String> countrys = ['US', 'UK', 'China(joking)', 'Pak'];
  String _currentName = '';
  String _currentCountry = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Text(
              'Select Your Country of Choice',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            DropdownButtonFormField(
              value: _currentCountry == '' ? countrys[0] : countrys[0],
              isDense: true,
              hint: Text(" Select a Country to Target"),
              items: countrys.map(
                (country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text('$country'),
                  );
                },
              ).toList(),
              onChanged: (val) {
                setState(() {
                  _currentCountry = val.toString();
                  print('$val');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
