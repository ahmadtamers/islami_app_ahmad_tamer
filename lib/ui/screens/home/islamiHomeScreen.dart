import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppcolors.dart';

class IslamiHomeScreen extends StatelessWidget { 
  static const String routename = "home";
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: 
        const BoxDecoration(
          image: DecorationImage(image: AssetImage(IslamiAppIcons.background),fit: BoxFit.fill)
          
        ),
      child: Scaffold(
        backgroundColor: IslamiAppColors.transparent,
    
      ),
    );
  }
}
