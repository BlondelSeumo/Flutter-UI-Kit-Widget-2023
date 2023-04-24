import 'package:flutter/material.dart';
import 'package:bigkit_material_null_safety/Template_Material/screen/Slider/Slider/Concept1Slider/SliderWidget/lib/Clipper/circular_reveal_clipper.dart';

/// This class reveals the next page in the circular form.

class PageReveal extends StatelessWidget {
  final double? revealPercent;
  final Widget? child;

  //Constructor
  PageReveal({this.revealPercent, this.child});

  @override
  Widget build(BuildContext context) {
    //ClipOval cuts the page to circular shape.
    return new ClipOval(
      clipper: new CircularRevealClipper(revealPercent: revealPercent),
      child: child,
    );
  }
}
