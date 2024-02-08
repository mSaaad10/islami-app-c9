import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadet_tab.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_details_screen.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadethItem;

  HadethTitleWidget({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments:
                Hadeth(title: hadethItem.title, content: hadethItem.content));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: Text(hadethItem.title,
            style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
