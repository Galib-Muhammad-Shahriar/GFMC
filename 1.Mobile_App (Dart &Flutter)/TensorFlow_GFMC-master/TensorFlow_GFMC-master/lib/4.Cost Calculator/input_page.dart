import 'package:GFMC_Intelligent/0.Provider/auth_provider.dart';
import 'package:GFMC_Intelligent/components/reuseable_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:GFMC_Intelligent/components/icon_content.dart';
import 'package:GFMC_Intelligent/components/reusable_card.dart';
import 'package:GFMC_Intelligent/constants.dart';
import 'package:GFMC_Intelligent/4.Cost Calculator/results_page.dart';
import 'package:GFMC_Intelligent/components/bottom_button.dart';
import 'package:GFMC_Intelligent/components/round_icon_button.dart';
import 'package:GFMC_Intelligent/4.Cost Calculator/calculator_brain.dart';
import 'package:provider/provider.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  int humidity = 50;
  int temperature = 25;
  int area = 1;
  int level = 1;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (_, providerData, __)
    => Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('COST CALCULATOR',
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),)
        ,

      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AREA',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            area.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      area--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    area++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'LEVEL',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            level.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                        () {
                                      level--;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      level++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HUMIDITY',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            humidity.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      humidity--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    humidity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'TEMPERATURE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            temperature.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      temperature--;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      temperature++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(area: area, humidity: humidity, level: level, temperature: temperature);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                          interpretation2: calc.getInterpretation2(),
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ),)
    ;
  }
}
