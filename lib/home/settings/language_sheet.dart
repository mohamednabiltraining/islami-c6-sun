import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  String name = 'Ahmed';

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('en');
              },
              child: settingsProvider.currentLang == 'en'
                  ? getSelectedRow('English')
                  : getUnSelectedRow('English')),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('ar');
              },
              child: settingsProvider.currentLang == 'ar'
                  ? getSelectedRow('العربيه')
                  : getUnSelectedRow('العربيه'))
        ],
      ),
    );
  }

  Widget getSelectedRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnSelectedRow(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
