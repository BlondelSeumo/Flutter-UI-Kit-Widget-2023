class favoriteModel {
  String? image, title, category, id, distance, time, calorie;
  List<String>? ingredient, directions;
  num? rating;

  favoriteModel(
      {this.image,
      this.category,
      this.time,
      this.rating,
      this.calorie,
      this.directions,
      this.ingredient,
      this.title,
      this.id,
      this.distance});
}
