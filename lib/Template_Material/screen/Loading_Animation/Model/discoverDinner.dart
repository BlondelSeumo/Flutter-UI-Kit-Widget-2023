class discoverDinner {
  String? image, title, category, id, distance, time, calorie;
  List<String>? ingredient, directions;
  num? rating;

  discoverDinner(
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

List<discoverDinner> discoverDinnerArray = [
  discoverDinner(
      id: "fdvcswse",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(2).webp?alt=media&token=be0aa823-0ab3-4f7e-9dbd-7329568ee2e0",
      category: "Dinner",
      title: "Baked Teriyaki Chicken",
      time: "60 Minute",
      rating: 4.3,
      calorie: "155 Cal",
      directions: [
        "In a small saucepan over low heat, combine the cornstarch, cold water, sugar, soy sauce, vinegar, garlic, ginger and ground black pepper. Let simmer, stirring frequently, until sauce thickens and bubbles",
        "Place chicken pieces in a lightly greased 9x13 inch baking dish. Brush chicken with the sauce. Turn pieces over, and brush again.",
        "Bake in the preheated oven for 30 minutes. Turn pieces over, and bake for another 30 minutes, until no longer pink and juices run clear. Brush with sauce every 10 minutes during cooking."
      ],
      ingredient: [
        "1 tablespoon cornstarch",
        "1 tablespoon cold water",
        "½ cup white sugar",
        "½ cup soy sauce",
        "½ cup soy sauce",
        "¼ cup cider vinegar",
        "1 clove garlic, minced",
        "12 skinless chicken thighs"
      ],
      distance: "42 km"),
  discoverDinner(
      id: "fdhgfsc31we",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/food-food-photography-meal-meat-769290.jpg?alt=media&token=f943442a-59fa-49f3-ab9d-9a1eed4ff9f5",
      category: "Dinner",
      title: "Grilled Pork Tenderloin with Balsamic Honey Glaze",
      time: "45 Minute",
      rating: 4.3,
      calorie: "200 Cal",
      directions: [
        "Mix garlic, onion, and chili powders with paprika and salt. Rub mixture all over pork tenderloin.",
        "Heat 1 tablespoon olive oil over medium-high heat. Add pork and sear until golden brown on all sides, about 2 minutes per side. Wrap tenderloin in aluminum foil.",
        "Preheat an outdoor grill for medium-high heat and lightly oil the grate. Grill the pork in its foil for 20 minutes.",
        "Meanwhile, mix balsamic vinegar, honey, mustard together with the remaining olive oil. Unwrap pork on the grill and liberally brush the glaze on all sides. Continue grilling, brushing on more glaze, until an instant-read thermometer inserted into the center reads 145 degrees F (63 degrees C), about 10 minutes more.",
        "Allow to rest at room temperature for 5 minutes before cutting. Drizzle with any remaining glaze if desired."
      ],
      ingredient: [
        "1 tablespoon garlic powder",
        "1 tablespoon onion powder",
        "2 teaspoons chili powder",
        "2 teaspoons paprika",
        "1 teaspoon salt",
        "2 tablespoons olive oil, divided"
      ],
      distance: "42 km"),
  discoverDinner(
      id: "fdsqwegegwe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/fish-tacos-2.jpg?alt=media&token=64aab1e6-6ecf-4714-87de-ed6715197acc",
      category: "Dinner",
      title: "Fish Tacos",
      time: "35 Minute",
      rating: 4.3,
      calorie: "450 Cal",
      directions: [
        "To make beer batter: In a large bowl, combine flour, cornstarch, baking powder, and salt. Blend egg and beer, then quickly stir into the flour mixture (don't worry about a few lumps).",
        "To make white sauce: In a medium bowl, mix together yogurt and mayonnaise. Gradually stir in fresh lime juice until consistency is slightly runny. Season with jalapeno, capers, oregano, cumin, dill, and cayenne.",
        "Heat oil in deep-fryer to 375 degrees F (190 degrees C)."
      ],
      ingredient: [
        "1 cup all-purpose flour",
        "2 tablespoons cornstarch",
        "1 teaspoon baking powder",
        "½ teaspoon salt",
        "1 cup beer"
      ],
      distance: "42 km"),
  discoverDinner(
      id: "fd432gdbvcswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(10).webp?alt=media&token=5abccdb1-88e4-4b56-ae2d-61b6b37ea16a",
      category: "Dinner",
      title: "Rosemary Ranch Chicken Kabobs",
      time: "20 Minute",
      rating: 4.3,
      calorie: "300 Cal",
      directions: [
        "In a medium bowl, stir together the olive oil, ranch dressing, Worcestershire sauce, rosemary, salt, lemon juice, white vinegar, pepper, and sugar. Let stand for 5 minutes. Place chicken in the bowl, and stir to coat with the marinade. Cover and refrigerate for 30 minutes.",
        "Preheat the grill for medium-high heat. Thread chicken onto skewers and discard marinade.",
        "Lightly oil the grill grate. Grill skewers for 8 to 12 minutes, or until the chicken is no longer pink in the center, and the juices run clear."
      ],
      ingredient: [
        "½ cup olive oil",
        "½ cup ranch dressing",
        "3 tablespoons Worcestershire sauce",
        "1 tablespoon minced fresh rosemary",
        "2 teaspoons salt",
        "1 teaspoon lemon juice"
      ],
      distance: "42 km"),
  discoverDinner(
      id: "fdgtr4bfdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(2).webp?alt=media&token=be0aa823-0ab3-4f7e-9dbd-7329568ee2e0",
      category: "Dinner",
      title: "Juicy Roasted Chicken",
      time: "60 minute",
      rating: 4.3,
      calorie: "200 Cal",
      directions: [
        "Preheat oven to 350 degrees F (175 degrees C).",
        "Place chicken in a roasting pan, and season generously inside and out with salt and pepper. Sprinkle inside and out with onion powder. Place 3 tablespoons margarine in the chicken cavity. Arrange dollops of the remaining margarine around the chicken's exterior. Cut the celery into 3 or 4 pieces, and place in the chicken cavity.",
        "Bake uncovered 1 hour and 15 minutes in the preheated oven, to a minimum internal temperature of 180 degrees F (82 degrees C). Remove from heat, and baste with melted margarine and drippings. Cover with aluminum foil, and allow to rest about 30 minutes before serving."
      ],
      ingredient: [
        "1 (3 pound) whole chicken, giblets removed",
        "1 teaspoon salt and black pepper to taste",
        "1 tablespoon onion powder, or to taste",
        "½ cup margarine, divided"
      ],
      distance: "42 km"),
];
