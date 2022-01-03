import 'package:amazon_seller_app/constants/color_Constants.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class MyCustomTextFieldOutline extends StatefulWidget {
  TextEditingController customController;
  String hintText;
  int wordLength;

  MyCustomTextFieldOutline(
      {required this.customController,
      required this.hintText,
      required this.wordLength});

  _MyCustomTextFieldOutlineState createState() =>
      _MyCustomTextFieldOutlineState();
}

class _MyCustomTextFieldOutlineState extends State<MyCustomTextFieldOutline> {
  String controllerVal = '';

  void initState() {
    super.initState();
    controllerVal = widget.customController.toString();
    widget.customController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    widget.customController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: KeyboardDismisser(
        gestures: [
          GestureType.onTap,
          GestureType.onVerticalDragDown,
        ],
        child: TextField(
          controller: widget.customController,
          onChanged: (val) {
            setState(() {
              controllerVal = val;
              print("$controllerVal");
            });
          },
          maxLength: widget.wordLength,
          decoration: InputDecoration(
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.black45, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Color(0xff0f111a), width: 1.0),
            ),
//          prefixIcon: Icon(Icons.format_align_left),
            suffixIcon: IconButton(
              color: Colors.grey,
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
            prefixIcon: Icon(Icons.format_align_left),
            hintText: (widget.hintText),
            // hintTExt
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xaadee0eb),
            ),
            filled: true,
            fillColor: ConstantColor.kWhite,
          ),
          cursorColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
