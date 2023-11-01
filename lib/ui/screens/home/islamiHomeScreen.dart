import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/home/tabs/hadeeth_tab/hadeeth_tab.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppTheme.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppcolors.dart';

class IslamiHomeScreen extends StatefulWidget { 

  static const String routename = "home";
  @override
  State<IslamiHomeScreen> createState() => _IslamiHomeScreenState();
}

class _IslamiHomeScreenState extends State<IslamiHomeScreen> {
  int currentTapIndex = 0;
  List<Widget> viewtabnow = [
    Quran_tab(),
    Hadeeth_tab(),
    Sebha_tab(),
    Radio_tab(),
  ];


  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: 
        const BoxDecoration(
          image: DecorationImage(image: AssetImage(IslamiAppIcons.background),fit: BoxFit.fill)
          
        ),
      child: 
        Scaffold(
          backgroundColor: IslamiAppColors.transparent,
          appBar: AppBar(
                    title: Text("Islami",
                              style: IslamiAppTheme.islamiAppBarFont.copyWith(color: IslamiAppColors.accent)
                              ),    
                    centerTitle: true,
                    elevation: 0,
                    backgroundColor: IslamiAppColors.transparent,
                  ),
          body: viewtabnow[currentTapIndex],
          bottomNavigationBar: navigationBarbottom (),
    
      ),
    );
  }

  Widget navigationBarbottom ()=> Theme(
      data: ThemeData(canvasColor: IslamiAppColors.primary),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(IslamiAppIcons.quran_button)) ,label:"Quran"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(IslamiAppIcons.hadeeth_button)) ,label:"Ahadeeth"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(IslamiAppIcons.sebha_button)) ,label:"Sebha"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(IslamiAppIcons.radio_button)) ,label:"Radio"),
        ],
        selectedItemColor: IslamiAppColors.accent,
        iconSize: 40,
        currentIndex: currentTapIndex,
        onTap: (index){
          setState(() {
            currentTapIndex = index;
          });
        },
      ),
    );
}
