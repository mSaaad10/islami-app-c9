import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  String quranText;
  int index;
  QuranDetails({required this.quranText, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        alignment: Alignment.center,
        child: Text(
          '${quranText}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
          textDirection: TextDirection.rtl,
        ));
  }
}
