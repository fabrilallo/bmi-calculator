import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiValue;
  final String bmiDescription;
  final String bmiInterpretation;

  ResultsPage(
      {@required this.bmiValue,
      @required this.bmiDescription,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.bmiDescription,
                    style: kResultTextStyle,
                  ),
                  Text(
                    this.bmiValue,
                    style: kBMITextStyle,
                  ),
                  Text(
                    this.bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop((context));
            },
            title: 'RE-CALCUALTE',
          ),
        ],
      ),
    );
  }
}
