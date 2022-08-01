import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) loadHadethData();
    return Container(
      child: hadethList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemBuilder: (_, index) {
                return HadethTitleWidget(hadethList[index]);
              },
              separatorBuilder: (_, index) {
                return Container(
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 64),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                );
              },
              itemCount: hadethList.length,
            ),
    );
  }

  void loadHadethData() async {
    List<Hadeth> mHadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadeth = content.trim().split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadethContent = allHadeth[i];
      List<String> hadethLines = singleHadethContent.trim().split("\n");
      String title = hadethLines[0];
      if (title.isEmpty) continue;
      hadethLines.removeAt(0);
      String content = hadethLines.join("\n");
      Hadeth h = Hadeth(title, content);
      mHadethList.add(h);
    }
    this.hadethList = mHadethList;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
