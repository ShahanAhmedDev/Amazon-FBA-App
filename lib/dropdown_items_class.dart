import 'package:amazon_seller_app/constants/color_Constants.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name, this.icon);

  final String name;
  final Icon icon;
}

List<Item> users = <Item>[
  const Item(
      'US',
      Icon(
        Icons.location_city_sharp,
        color: Color(0xff010302),
      )),
  const Item(
      'Uk', Icon(Icons.location_city_outlined, color: Color(0xff010302))),
];

//DropdownButton<Item>(
//hint: Text("Select item"),
//value: selectedUser,
//onChanged: (value) {
//setState(() {
//selectedUser = value;
//});
//},
//items: users.map((Item user) {
//return DropdownMenuItem<Item>(
//value: user,
//child: Row(
//children: <Widget>[
//user.icon,
//SizedBox(
//width: 10,
//),
//Text(
//user.name,
//style: TextStyle(color: Colors.black),
//),
//],
//),
//);
//}).toList(),
//),
