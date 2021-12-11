import 'package:covid19track/screens/questionare_screen/questionare_screen.dart';
import 'package:covid19track/utils/constants.dart';
import 'package:covid19track/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartupScreen extends StatefulWidget {

  @override
  _StartupScreenState createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {

  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal *7, right : SizeConfig.blockSizeHorizontal *7 ,bottom: SizeConfig.blockSizeVertical * 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                height: SizeConfig.blockSizeVertical * 15,
                width: SizeConfig.blockSizeHorizontal * 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),

            Expanded(child: Container(color: Colors.white,)),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Bienvenue!',
                      style: TextStyle(
                        fontSize: SizeConfig.fontSize * 2
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *0.5),
                    child: Text(
                      'Pour debuter, entrez votre nom:',
                      style: TextStyle(
                        fontSize: SizeConfig.fontSize * 2
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2, left: SizeConfig.blockSizeHorizontal * 10, right: SizeConfig.blockSizeHorizontal * 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1
                      )
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(fontSize: SizeConfig.fontSize * 2),
                        controller: userName,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          hintText: 'Nom',
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: SizeConfig.fontSize * 2),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      if(userName.text.isEmpty)
                        Constants.showDialog('S\'il vous plaît entrez votre nom');
                      else
                        Get.to(QuestionareScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2,),
                      height: SizeConfig.blockSizeVertical * 5,
                      width: SizeConfig.blockSizeHorizontal * 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey[300]!,
                          width: 1
                        )
                      ),
                      child: Center(
                        child: Text(
                          'Continuer',
                          style: TextStyle(
                            fontSize: SizeConfig.fontSize * 2
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}