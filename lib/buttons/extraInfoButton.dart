import 'package:flutter/material.dart';
import 'package:amazon_seller_app/UI/dropdown_card_ui.dart';

class extraInfoButton extends StatefulWidget {
  String dialogTitle;
  String dialogContent;

  extraInfoButton({required this.dialogTitle, required this.dialogContent});

  @override
  _extraInfoButtonState createState() => _extraInfoButtonState();
}

class _extraInfoButtonState extends State<extraInfoButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('More Information'),
              ),
            ),
          ),
        ),
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text(widget.dialogTitle),
                  content: Text(widget.dialogContent),
                ));
      },
    );
  }
}
