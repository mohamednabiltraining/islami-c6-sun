import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_tab.dart';
import 'package:islami_sun_c6/home/quran/sura_details.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
