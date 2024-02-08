import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadet_tab.dart';
import 'package:islami_c10_friday/ui/styles/my_theme_data.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-Details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.isDarkEnabled
                  ? 'assets/images/main_background_dark.png'
                  : 'assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Islami'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                color: Theme.of(context).cardTheme.color,
                child: Container(
                    padding: EdgeInsets.all(35),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(args.title),
                          Container(
                            color: Theme.of(context).dividerColor,
                            width: double.infinity,
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Text(
                              args.content,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                    ))),
          )),
    );
  }
}
