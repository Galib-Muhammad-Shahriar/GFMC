import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/constants.dart';
import 'package:GFMC_Intelligent/components/reusable_card.dart';
import 'package:GFMC_Intelligent/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      { @required this.interpretation,
        @required this.interpretation2,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String interpretation2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('COST CALCULATOR',
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.grey[500],
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),

                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),

                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                    Text(
                      interpretation2,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),

                  ],
                ),

              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
