import 'package:flutter/material.dart';
import 'Reusable_card.dart';
import 'bottom_button.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final  String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            Expanded(
              flex:5,
              child: ReusableCard(
                cardColor: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style:TextStyle(
                      color: Color(0xFF24DB76),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    )),
                    Text(bmiResult, style:
                    TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    )),
                    Text(interpretation,textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0),),
                  ],
                ),

              ),
            ),
            BottomButton(
    buttonTitle: 'RE-CALCULATE' ,onTap: (){
      Navigator.pop(context);

    },
    )
          ],
        ));
  }
}
