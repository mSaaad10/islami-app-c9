import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c10_friday/ui/home/quran_tab/sura_name.dart';
import 'package:islami_c10_friday/ui/home/screens/quran_details.dart';
import 'package:islami_c10_friday/ui/styles/my_theme_data.dart';

class SuraDetailsScreen extends StatefulWidget  {
static const String routeName = 'Sura-Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List<String> verses = [];


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs ;
if(verses.isEmpty){
  readQuranFile(args.index);
}

    return verses.isEmpty ? Center(child: CircularProgressIndicator()): Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                      MyThemeData.isDarkEnabled
                          ? 'assets/images/main_background_dark.png'
                          : 'assets/images/main_background.png',
                    ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
                title: Text(
                  args.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.yellow),
                ),
              ),
        body: Card(
                  color: Theme.of(context).cardTheme.color,
                  margin: EdgeInsets.all(26),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      width: double.infinity,
                      height: 2,
                      color: Theme.of(context).dividerColor,
                    ),
              itemBuilder: (context, index) => QuranDetails(quranText: verses[index],index: index),itemCount:  verses.length,)),
      ),
    );
  }

  void readQuranFile(int index)async {
    //print(index);
    String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;


    setState(() {

    });
  }
}
