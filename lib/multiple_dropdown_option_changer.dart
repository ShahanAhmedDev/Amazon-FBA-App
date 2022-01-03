import 'package:flutter/material.dart';

class Multi_Dropdown_Option extends StatefulWidget {
  @override
  _Multi_Dropdown_OptionState createState() => _Multi_Dropdown_OptionState();
}

// ignore: camel_case_types
class _Multi_Dropdown_OptionState extends State<Multi_Dropdown_Option> {
  List<DropdownMenuItem<String>> menuItems = [];

  dynamic value;
  bool disableDropdown = true;

  final web = {"1": 'Php', "2": 'Python', "3": 'Node-Js'};
  final app = {"1": 'Java', "2": 'React', "3": 'Flutter'};
  final desktop = {"1": 'JavaFx', "2": 'Electron', "3": 'Node-Tkinter'};

  void populateWeb() {
    for (String key in web.keys) {
      menuItems.add(
        DropdownMenuItem<String>(
          value: web[key],
          child: Center(
            child: Text(web[key]!),
          ),
        ),
      );
    }
  }

  void populateDesktop() {
    for (String key in desktop.keys) {
      menuItems.add(
        DropdownMenuItem<String>(
          value: desktop[key],
          child: Center(
            child: Text(desktop[key]!),
          ),
        ),
      );
    }
  }

  void populateApp() {
    for (String key in app.keys) {
      menuItems.add(
        DropdownMenuItem<String>(
          value: app[key],
          child: Center(
            child: Text(app[key]!),
          ),
        ),
      );
    }
  }

  void secondValueChanged(_val) {
    setState(() {
      value = _val;
    });
  }

  void valueChanged(_val) {
    if (_val == 'Web') {
      menuItems = [];
      populateWeb();
    } else if (_val == 'app') {
      menuItems = [];
      populateApp();
    } else if (_val == 'desktop') {
      menuItems = [];
      populateDesktop();
    }
    setState(() {
      value = _val;
      disableDropdown = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              value: 'Web',
              child: Center(
                child: Text('Web'),
              ),
            ),
            DropdownMenuItem<String>(
              value: 'app',
              child: Center(
                child: Text('app'),
              ),
            ),
            DropdownMenuItem<String>(
              value: 'desktop',
              child: Center(
                child: Text('desktop'),
              ),
            ),
          ],
          hint: Text('Select any Field'),
          onChanged: (_val) {
            valueChanged(_val);
          },

//    (_val) {
//            setState(() {
//              value = _val.toString();
//            });
//            print(_val.toString());
//          },
        ),
        DropdownButton(
          disabledHint: Text('First Select any Field'),
          items: menuItems,
          hint: Text('Select something and get Amazed'),
          onChanged:
              disableDropdown ? null : (_val) => secondValueChanged(_val),
        ),
        Text(
          "$value",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
