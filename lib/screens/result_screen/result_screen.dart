import 'package:covid19track/screens/startup_screen/startup_screen.dart';
import 'package:covid19track/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatefulWidget {

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal *7, right: SizeConfig.blockSizeHorizontal *7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 10,
              width: SizeConfig.blockSizeHorizontal * 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.contain
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *30),
              child: Text(
                'Thank you for completing the form',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: SizeConfig.fontSize * 2.2
                ),
              ),
            ),
           
            GestureDetector(
              onTap: (){
                  Get.to(StartupScreen());
              },
              child: Container(
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3, left: SizeConfig.blockSizeHorizontal * 15, right: SizeConfig.blockSizeHorizontal * 15),
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
                    'Retour au début',
                    style: TextStyle(
                      fontSize: SizeConfig.fontSize * 2
                    ),
                  ),
                ),
              ),
            )

            
          ]
        )
      ),
    );
  }
}