import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/hadeth/hadeth_tab.dart';
import 'package:islami_sun_c6/home/quran/quran_tab.dart';
import 'package:islami_sun_c6/home/radio/radio_tab.dart';
import 'package:islami_sun_c6/home/tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(AssetImage('assets/images/ic_quran.png'))),
              BottomNavigationBarItem(
                  label: 'Hadeth',
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png'))),
              BottomNavigationBarItem(
                  label: 'Tasbeh',
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png'))),
              BottomNavigationBarItem(
                  label: 'Radio',
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')))
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
