import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:flutter/material.dart';

class Concept3Slider extends StatefulWidget {
  @override
  _Concept3Slider createState() => _Concept3Slider();
}

class _Concept3Slider extends State<Concept3Slider> {
  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  // Controls the currently active step. Can be set to any valid value i.e., a value that ranges from 0 to upperBound.
  int activeStep = 5; // Initial step set to 5.

  // Must be used to control the upper bound of the activeStep variable. Please see next button below the build() method!
  int upperBound = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Concept 3',
          style: TextStyle(fontFamily: "Sofia", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IconStepper(
              activeStepColor: Colors.orangeAccent,
              activeStepBorderColor: Colors.orangeAccent,
              stepColor: Colors.black12,
              lineColor: Colors.orangeAccent,
              icons: [
                Icon(Icons.supervised_user_circle),
                Icon(Icons.flag),
                Icon(Icons.access_alarm),
                Icon(Icons.supervised_user_circle),
                Icon(Icons.flag),
                Icon(Icons.access_alarm),
                Icon(Icons.supervised_user_circle),
              ],

              // activeStep property set to activeStep variable defined above.
              activeStep: activeStep,

              // bound receives value from upperBound.
              // upperBound: (bound) => upperBound = bound,

              // This ensures step-tapping updates the activeStep.
              onStepReached: (index) {
                setState(() {
                  activeStep = index;
                });
              },
            ),
            header(),
            Expanded(
              child: FittedBox(
                child: Center(
                  child: Text(
                    '$activeStep',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                previousButton(),
                nextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the next button.
  Widget nextButton() {
    return ElevatedButton(
      onPressed: () {
        // Increment activeStep, when the next button is tapped. However, check for upper bound.
        if (activeStep < upperBound) {
          setState(() {
            activeStep++;
          });
        }
      },
      child: Text('Next'),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
      child: Text('Prev'),
    );
  }

  /// Returns the header wrapping the header text.
  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          headerText(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  // Returns the header text based on the activeStep.
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Slide 1';

      case 2:
        return 'Slide 2';

      case 3:
        return 'Slide 3';

      case 4:
        return 'Slide 4';

      case 5:
        return 'Slide 5';

      case 6:
        return 'Slide 6';

      default:
        return 'Slide 7';
    }
  }
}
