import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/Modal/suraOrHadeethARG.dart';
import 'package:islami_app_ahmad_tamer/ui/screens/View_SuraOrHadeeth/viewSuraOrHadeeth.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppColors.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppTheme.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiConstants.dart';

class Hadeeth_tab extends StatelessWidget {

  List<String> ahadeethNames = List.generate(50, (index) {
     return "${index+1}الحديث رقم";
  });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(IslamiAppIcons.hadeeth_logo,fit: BoxFit.contain)
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
                  Text("Ahadeeth",style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(color: IslamiAppColors.accent),),
                  Divider(
                    color: IslamiAppColors.primary,
                    thickness:3,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: ahadeethNames.length,
                      itemBuilder: (_,index){
                        return 
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context,ViewSuraOrHadeeth.routname,arguments: SuraOrHadeethARG(suraOrHadeethName: ahadeethNames[index], filename: "h${index+1}.txt", isQuranFile: false));
                          
                            },
                            child: Text(ahadeethNames[index],textAlign: TextAlign.center,style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(color: IslamiAppColors.accent),)
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
