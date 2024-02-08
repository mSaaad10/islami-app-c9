import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset('assets/images/hadeth_header_image.png')),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 2, color: Theme.of(context).dividerColor))),
            child: Text(
              'Hadeth',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            flex: 3,
            child: allAhadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        HadethTitleWidget(hadethItem: allAhadeth[index]),
                    separatorBuilder: (context, index) => Container(
                          color: Theme.of(context).dividerColor,
                          width: double.infinity,
                          height: 2,
                        ),
                    itemCount: allAhadeth.length),
          )
        ],
      ),
    );
  }

  List<Hadeth> allAhadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.trim().split('#');

    for (int i = 0; i < hadethList.length; i++) {
      String singleHadethItem = hadethList[i];
      List<String> hadethLines = singleHadethItem.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);

      allAhadeth.add(hadeth);
    }

    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth({required this.title, required this.content});
}
