import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          SizedBox(
            height: 14,
          ),
          getUnSelectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, color: Color(0xFFB7935F)),
        ),
        Icon(
          Icons.check,
          color: Color(0xFFB7935F),
          size: 35,
          weight: 80,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 24, color: Colors.black),
    );
  }
}
