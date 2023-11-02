import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_ahmad_tamer/Modal/suraOrHadeethARG.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppColors.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppIcons.dart';
import 'package:islami_app_ahmad_tamer/ui/utilities/islamiAppTheme.dart';

class ViewSuraOrHadeeth extends StatefulWidget {  

  static const String routname = "viewSuraOrHadeeth";

  @override
  State<ViewSuraOrHadeeth> createState() => _ViewSuraOrHadeethState();
}

class _ViewSuraOrHadeethState extends State<ViewSuraOrHadeeth> {
  late SuraOrHadeethARG arguments;

  late String filecontent = "";

  @override
  Widget build(BuildContext context) {

    arguments = ModalRoute.of(context)!.settings.arguments as SuraOrHadeethARG;
    if( filecontent.isEmpty){
      readFile();
    }
    return Container(
      decoration: 
        const BoxDecoration(
          image: DecorationImage(image: AssetImage(IslamiAppIcons.background),fit: BoxFit.fill)
          
        ),
      child: 
        Scaffold(

          backgroundColor: IslamiAppColors.transparent,
          appBar: AppBar(
                    title: Text(arguments.suraOrHadeethName,
                              style: IslamiAppTheme.islamiAppBarFont.copyWith(color: IslamiAppColors.accent)
                              ),    
                    centerTitle: true,
                    elevation: 0,
                    backgroundColor: IslamiAppColors.transparent,
                  ),
          body: filecontent.isEmpty 
                ? const Center(child: CircularProgressIndicator(),)
                :
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: SingleChildScrollView(
                child: 
                  Text(filecontent,style: TextStyle(color: IslamiAppColors.accent,fontSize: 25),textAlign: TextAlign.center,textDirection: TextDirection.rtl,)),
            ),
        ),
    );
  }

  void readFile() async {
    String file = await rootBundle.loadString(arguments.isQuranFile
      ?"assets/files/quran/${arguments.filename}"
      :"assets/files/hadeeth/${arguments.filename}");

      

    List<String> fileLines = file.split("\n");
    for(int i = 0 ;i < fileLines.length ;i++){
      fileLines[i] += arguments.isQuranFile ? "(${i+1}) " : "";
    }
    
    setState(() {
      filecontent = fileLines.join();
    });
  }
}
