import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.intrepretation,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String intrepretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kactiveCardColour,
        title: Center(
          child: Text("Body Mass Index"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusable_card(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    intrepretation,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Re - Calculate",
                          style: kLargeButtonTextStyle,
                        ),
                      ),
                      color: kbottomContainerColour,
                      margin: EdgeInsets.only(top: 10.0),

                      width: double.infinity,
                      height: kbottomContainerHeight,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
