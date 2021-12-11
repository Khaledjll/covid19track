import 'package:covid19track/screens/result_screen/result_screen.dart';
import 'package:covid19track/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionareScreen extends StatefulWidget {

  @override
  _QuestionareScreenState createState() => _QuestionareScreenState();
}

class _QuestionareScreenState extends State<QuestionareScreen> {
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
            Hero(
              tag: 'logo',
              child: Container(
                height: SizeConfig.blockSizeVertical * 10,
                width: SizeConfig.blockSizeHorizontal * 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *3.5),
              child: Text(
                'Formulaire COVID-19 pour (nom)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: SizeConfig.fontSize * 2.2
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *1),
              child: Text(
                'Date : 2020-11-25',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: SizeConfig.fontSize * 2.2
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *5),
              child: Text(
                'Aujourd\'hui, je me sens:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: SizeConfig.fontSize * 2.2
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical *4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_dissatisfied_sharp, size: 40,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_neutral_outlined, size: 40,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_satisfied_alt, size: 40,)),
                ],
              )
            ),

            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      //scolor: Colors.amber,
                      child: Text(
                        'J\'ai voyagé hors du canada dans les derniers 14 jours:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: SizeConfig.fontSize * 2.3
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, size: 34,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.check, size: 34,)),
                      ],
                    )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      //scolor: Colors.amber,
                      child: Text(
                        'J\'ai été en contacte avec un ou individu qui as-eu COVID19 dans les derniers 14 jours:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: SizeConfig.fontSize * 2.3
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, size: 34,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.check, size: 34,)),
                      ],
                    )
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                  Get.to(ResultScreen());
              },
              child: Container(
                margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 7, left: SizeConfig.blockSizeHorizontal * 15, right: SizeConfig.blockSizeHorizontal * 15),
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
                    'Soumettre',
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