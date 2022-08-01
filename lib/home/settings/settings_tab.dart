import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/providers/settings_provider.dart';
import 'package:islami_sun_c6/home/settings/language_sheet.dart';
import 'package:islami_sun_c6/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline5,
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1)),
              child: Text(
                settingsProvider.isDark()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline5,
          ),
          InkWell(
            onTap: () {
              showLanguageSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1)),
              child: Text(
                settingsProvider.currentLang == 'en' ? 'English' : 'العربيه',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageSheet();
        });
  }

  void showThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
