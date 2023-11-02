import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/View_SuraOrHadeeth/viewSuraOrHadeeth.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/home/islamiHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
        routes: {
          IslamiHomeScreen.routename:(_)=> IslamiHomeScreen(),
          ViewSuraOrHadeeth.routname:(_)=> ViewSuraOrHadeeth(),

        },
        initialRoute: IslamiHomeScreen.routename,
      );
  }
}

