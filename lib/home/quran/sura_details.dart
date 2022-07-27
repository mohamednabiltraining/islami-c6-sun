import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/main_background.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
        ));
  }
}

class SuraDetailsArgs {
  int index;
  String name;

  SuraDetailsArgs(this.index, this.name);
}
