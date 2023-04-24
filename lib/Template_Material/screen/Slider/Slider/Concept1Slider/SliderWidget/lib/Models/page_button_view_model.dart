import 'package:bigkit_material_null_safety/Template_Material/screen/Slider/Slider/Concept1Slider/SliderWidget/lib/Constants/constants.dart';

/// This is view model for the skip and done buttons.

class PageButtonViewModel {
  final double? slidePercent;
  final int? totalPages;
  final int? activePageIndex;
  final SlideDirection? slideDirection;

  PageButtonViewModel({
    this.slidePercent,
    this.totalPages,
    this.activePageIndex,
    this.slideDirection,
  });
}
