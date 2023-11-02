import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppColors.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppTheme.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiConstants.dart';

class Quran_tab extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(IslamiAppIcons.quran_logo)
          ),
          Expanded(
            flex: 7,
            child: 
              Column(
                children: [
                  Divider(
                    color: IslamiAppColors.primary,
                    thickness:3,
                  ),
                  Text("Sura Name",style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(color: IslamiAppColors.accent),),
                  Divider(
                    color: IslamiAppColors.primary,
                    thickness:3,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: IslamiConstants.Suraname.length,
                      itemBuilder: (_,index){
                        return 
                          TextButton(
                            onPressed: (){},
                            child: Text(IslamiConstants.Suraname[index],textAlign: TextAlign.center,style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(color: IslamiAppColors.accent),)
                          );
                      }),
                  )
                ],
              )
          ),


        ],
      );
  }
}
