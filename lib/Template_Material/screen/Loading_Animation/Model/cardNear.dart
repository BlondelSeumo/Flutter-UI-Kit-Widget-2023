class modelNear {
  String? image, title, category, id, distance, time, calorie;
  List<String>? ingredient, directions;
  num? rating;

  modelNear(
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

List<modelNear> modelNearArray = [
  modelNear(
      id: "fdswxbfde",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(21).webp?alt=media&token=53fb4ae6-bbf0-4477-b9f1-d7ab9c188e45",
      category: "Healty",
      title: "Homemade Yogurt",
      time: "60 Minute",
      rating: 4.3,
      calorie: "150 Cal",
      directions: [
        "Pour 2 cups of water into a sealable 1 quart container, and stir in the yogurt until dissolved. Whisk in powdered milk until completely blended. Fill with remaining water, and stir. Close the lid, and set in a warm place for 12 to 15 hours. I use a gas oven (turned off), or even a heating pad. Refrigerate, until chilled before serving."
      ],
      ingredient: [
        "4 cups water, divided",
        "1 ½ tablespoons plain yogurt with active cultures",
        "1 ¾ cups dry milk powder"
      ],
      distance: "42 km"),
  modelNear(
      id: "fdswq432e",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(17).webp?alt=media&token=93fbc6ed-d7c3-4827-a12b-ddb84b67c157",
      category: "Healty",
      title: "Grilled Corn Salad",
      time: "45 Minute",
      rating: 4.3,
      calorie: "100 Cal",
      directions: [
        "Preheat an outdoor grill for medium heat; lightly oil the grate",
        "Cook the corn on the preheated grill, turning occasionally, until the corn is tender and specks of black appear, about 10 minutes; set aside until just cool enough to handle. Slice the kernels off of the cob and place into a bowl.",
        "Combine the warm corn kernels with the green pepper, diced tomato, onion, cilantro, and olive oil. Season with salt and pepper; toss until evenly mixed. Set aside for at least 30 minutes to allow flavors to blend before serving."
      ],
      ingredient: [
        "6 ears freshly shucked corn",
        "1 green pepper, diced",
        "2 Roma (plum) tomatoes, diced",
        "¼ cup diced red onion",
        "½ bunch fresh cilantro, chopped, or more to taste"
      ],
      distance: "42 km"),
  modelNear(
      id: "fdsrcqwwe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(19).webp?alt=media&token=3180b4f7-be51-4669-925c-cfb8bdccf139",
      category: "Healty",
      title: "Red, White, and Blueberry Fruit Salad",
      time: "40 minute",
      rating: 4.3,
      calorie: "150 Cal",
      directions: [
        "Mix the strawberries and blueberries together in a bowl, sprinkle with sugar and lemon juice, and toss lightly. Refrigerate until cold, at least 30 minutes. About 30 minutes before serving, cut the bananas into 3/4-inch thick slices, and toss with the berries."
      ],
      ingredient: [
        "1 pint strawberries, hulled and quartered",
        "1 pint blueberries",
        "½ cup white sugar",
        "2 tablespoons lemon juice",
        "4 eaches bananas"
      ],
      distance: "42 km"),
  modelNear(
      id: "fdbfdgbswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(18).webp?alt=media&token=3be6bbbf-dda8-4166-82f4-f94fef289526",
      category: "Healty",
      title: "Perfect Summer Fruit Salad",
      time: "30 minute",
      rating: 4.3,
      calorie: "100 Cal",
      directions: [
        "Bring orange juice, lemon juice, brown sugar, orange zest, and lemon zest to a boil in a saucepan over medium-high heat. Reduce heat to medium-low, and simmer until slightly thickened, about 5 minutes. Remove from heat, and stir in vanilla extract. Set aside to cool.",
        "Layer the fruit in a large, clear glass bowl in this order: pineapple, strawberries, kiwi fruit, bananas, oranges, grapes, and blueberries. Pour the cooled sauce over the fruit. Cover and refrigerate for 3 to 4 hours before serving."
      ],
      ingredient: [
        "⅔ cup fresh orange juice",
        "⅓ cup fresh lemon juice",
        "⅓ cup packed brown sugar",
        "½ teaspoon grated orange zest",
        "1 teaspoon vanilla extract"
      ],
      distance: "42 km"),
  modelNear(
      id: "fdsbsafe43we",
      image:
          "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(20).webp?alt=media&token=0f4e2ac4-281f-4f0b-abf8-e8dbfd15a7f8",
      category: "Healty",
      title: "Authentic Homemade Yogurt",
      time: "60 minute",
      rating: 4.3,
      calorie: "100 Cal",
      directions: [
        "On a work surface, lay four clean cotton towels in a cross pattern, each with one end overlapping a few inches in the center. Position a large baking dish or glass mixing bowl in the center of the towels.",
        "Set the plain yogurt on the counter to warm to room temperature while preparing milk mixture",
        "Combine milk and half-and-half in a large, heavy, non-aluminum pot. Heat over low to moderate heat, stirring constantly, until mixture just comes to the boil. Immediately remove from heat and pour mixture into the waiting bowl. Add 1 pint whipping cream, if desired, for added richness.",
        "Refrigerate yogurt several hours or overnight to chill completely."
      ],
      ingredient: [
        "¾ cup plain yogurt, preferably Greek-style, with live cultures",
        "1 quart whole milk",
        "1 quart half-and-half",
        "1 pint heavy whipping cream"
      ],
      distance: "42 km"),
];
