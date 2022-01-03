import '../screens/second_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Widget page;

  CustomButton({required this.page});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: 150,
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
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Text(
                'Next Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return page;
          }),
        );
      },
    );
  }
}
