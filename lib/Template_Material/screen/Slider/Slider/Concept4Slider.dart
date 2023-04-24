import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class Concept4Slider extends StatefulWidget {
  @override
  _Concept4Slider createState() => _Concept4Slider();
}

class _Concept4Slider extends State<Concept4Slider> {
  // REQUIRED: USED TO CONTROL THE STEPPER.
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Concept 4',
          style: TextStyle(fontFamily: "Sofia", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            children: [
              steps(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DotStepper(
                    dotCount: dotCount,
                    dotRadius: 12,
                    activeStep: activeStep,
                    shape: Shape.stadium,
                    spacing: 10,
                    indicator: Indicator.shift,
                    onDotTapped: (tappedDotIndex) {
                      setState(() {
                        activeStep = tappedDotIndex;
                      });
                    },
                    fixedDotDecoration: FixedDotDecoration(
                      color: Colors.black12,
                    ),
                    indicatorDecoration: IndicatorDecoration(
                      color: Colors.orangeAccent,
                    ),
                    lineConnectorDecoration: LineConnectorDecoration(
                      color: Colors.red,
                      strokeWidth: 0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [previousButton(), nextButton()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget steps() {
    return Container(
      child: Center(
          child: Text(
        '$activeStep',
        style: TextStyle(fontSize: 50.0),
      )),
    );
  }

  /// Returns the next button widget.
  Widget nextButton() {
    return ElevatedButton(
      child: Text('Next'),
      onPressed: () {
        /// ACTIVE STEP MUST BE CHECKED FOR (dotCount - 1) AND NOT FOR dotCount To PREVENT Overflow ERROR.
        if (activeStep < dotCount - 1) {
          setState(() {
            activeStep++;
          });
        }
      },
    );
  }

  /// Returns the previous button widget.
  Widget previousButton() {
    return ElevatedButton(
      child: Text('Prev'),
      onPressed: () {
        // activeStep MUST BE GREATER THAN 0 TO PREVENT OVERFLOW.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
    );
  }
}
