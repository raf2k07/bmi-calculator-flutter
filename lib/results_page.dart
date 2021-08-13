import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiValue, this.bmiResult, this.bmiInterpretation});

  final String bmiResult;
  final String bmiValue;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kResultsHeaderTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult.toUpperCase(),
                      style: kResultsTextStyle,
                    ),
                    Text(
                      bmiValue,
                      style: kResultsCardTextStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kResultsBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                    child: Text(
                  "RECALCULATE",
                  style: kBottomContainerTextStyle,
                )),
                color: kBottomContainerColor,
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            )
          ]),
    );
  }
}
