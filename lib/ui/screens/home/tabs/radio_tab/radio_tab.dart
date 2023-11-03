import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';

class Radio_tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: 
                   Image.asset(IslamiAppIcons.radio_logo)
                  
              ),
              Spacer(
                flex: 6,
              ),
      
            ]);
  }
}