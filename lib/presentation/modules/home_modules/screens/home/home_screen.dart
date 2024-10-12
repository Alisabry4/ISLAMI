import 'package:flutter/material.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/colors_manager.dart';
import 'package:islami/core/strings_manager.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/hadith_tap/hadith_tap.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/quarn_tap/quarn_tap.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/tasbeh_tab/Tasbeh_tap.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/settings_tap/setting_tap.dart';
import 'package:islami/presentation/modules/home_modules/screens/home/tabs/radio_tap/radio_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuarnTap(),
    HadithTab(),
    TasehTap(),
    RadioTab(),
    SettingTap(),
  ];

  int selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.mainBgLight))
      ),
      child: Scaffold(
        appBar: AppBar(
          title:const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
                        currentIndex: selectedIndex,

          onTap: (index) {
            print(index);
                // 1
                 selectedIndex = index; // 1
                 setState(() {});
              },
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.goldColor,
              icon:ImageIcon(AssetImage(AssetsManager.quarnIcon)),label: StringsManager.quarnLabel),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.goldColor,
              icon:ImageIcon(AssetImage(AssetsManager.hadithIcon)),label: StringsManager.hadithLabel),
              BottomNavigationBarItem(
              backgroundColor: ColorsManager.goldColor,
              icon:ImageIcon(AssetImage(AssetsManager.tasbehIcon)),label: StringsManager.tasbehLabel),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.goldColor,
              icon:ImageIcon(AssetImage(AssetsManager.radioIcon)),label: StringsManager.radioLabel),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.goldColor,
              icon:Icon(Icons.settings),label: StringsManager.settingLabel),
           
          ],
        ),
        body: tabs[selectedIndex],
    ),
    );
  }
}