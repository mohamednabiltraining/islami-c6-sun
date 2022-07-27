import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/quran/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  int index;
  String name;

  SuraNameWidget(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(index, name));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
