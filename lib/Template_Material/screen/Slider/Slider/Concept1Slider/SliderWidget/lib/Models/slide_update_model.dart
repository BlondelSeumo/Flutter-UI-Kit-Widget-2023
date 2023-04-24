// model for slide update

import 'package:bigkit_material_null_safety/Template_Material/screen/Slider/Slider/Concept1Slider/SliderWidget/lib/Constants/constants.dart';

class SlideUpdate {
  final UpdateType updateType;
  final SlideDirection? direction;
  final double? slidePercent;

  SlideUpdate(
    this.direction,
    this.slidePercent,
    this.updateType,
  );
}
