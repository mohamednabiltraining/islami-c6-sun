import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_sun_c6/home/providers/settings_provider.dart';
import 'package:islami_sun_c6/home/quran/verse_widget.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var provider = Provider.of<SettingsProvider>(context);
    if (verses.isEmpty) readFile(args.index);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  provider.getMainBackGround(),
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.symmetric(vertical: 64, horizontal: 12),
            child: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (_, index) {
                      return VerseWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (_, index) {
                      return Container(
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      );
                    }),
          ),
        ));
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split("\r\n");
    verses = lines;
    print(verses);
    setState(() {});
  }
}

class SuraDetailsArgs {
  int index;
  String name;

  SuraDetailsArgs(this.index, this.name);
}
