import 'package:flutter/material.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppColors.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppTheme.dart';

class Sebha_tab extends StatefulWidget {  

  @override
  State<Sebha_tab> createState() => _Sebha_tabState();
}

class _Sebha_tabState extends State<Sebha_tab> {
  int sebhaCount = 30;
  double sebhaShape = 0;

  @override
  Widget build(BuildContext context) {
    return 
      Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: 
                  AnimatedRotation(
                    turns: sebhaShape,
                    duration: const Duration(seconds: 1),
                    child: Image.asset(IslamiAppIcons.sebha_logo)
                  )
              ),
              Expanded(
                flex: 6,
                child: 
                  Column(
                    children: [
                      Text("عدد التسبيحات",style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(fontSize: 30),),
                      Container(
                        margin: EdgeInsets.only(bottom: 100,top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: 
                            Container(
                              padding: EdgeInsets.all(20),
                              color: IslamiAppColors.primary,
                              child: 
                                Text("${sebhaCount}",style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(fontSize: 30))),
                        ),
                        
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: IslamiAppColors.primary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))),
                        onPressed: (){
                          if(sebhaCount == 30) {
                            sebhaCount=0;
                          }
                          setState(() {
                            sebhaCount++;
                            sebhaShape +=0.033;
                          });
                          
                        }, 
                        child:
                          Text("سبحان الله",style: IslamiAppTheme.islamiQuraTabSuraName.copyWith(fontSize: 30)),
                      )
                    ],

                  ),
              ),
      
            ]);
  }
}
