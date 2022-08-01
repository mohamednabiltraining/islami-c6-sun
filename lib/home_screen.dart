import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_tab.dart';
import 'package:islami_sun_c6/home/providers/settings_provider.dart';
import 'package:islami_sun_c6/home/quran/quran_tab.dart';
import 'package:islami_sun_c6/home/radio/radio_tab.dart';
import 'package:islami_sun_c6/home/settings/settings_tab.dart';
import 'package:islami_sun_c6/home/tasbeh/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingsProvider.getMainBackGround(),
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                backgroundColor: settingsProvider.isDark()
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.quran_title,
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png'))),
            BottomNavigationBarItem(
                backgroundColor: settingsProvider.isDark()
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.hadeth_title,
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png'))),
            BottomNavigationBarItem(
                backgroundColor: settingsProvider.isDark()
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.sebha_title,
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png'))),
            BottomNavigationBarItem(
                backgroundColor: settingsProvider.isDark()
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.radio_title,
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png'))),
            BottomNavigationBarItem(
                backgroundColor: settingsProvider.isDark()
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.settings_title,
                icon: Icon(Icons.settings))
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
