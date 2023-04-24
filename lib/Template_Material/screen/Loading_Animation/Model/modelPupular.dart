class modelPopular {
  String? title, category, image, id, time, calorie;
  List<String>? ingredients, directions;
  num? rating;

  modelPopular(
      {this.calorie,
      this.category,
      this.time,
      this.rating,
      this.directions,
      this.id,
      this.image,
      this.ingredients,
      this.title});
}

List<modelPopular> modelPopularArray = [
  modelPopular(
    id: "fdvdfgzxcr342swe",
    image:
        "https://images.unsplash.com/photo-1558498619-10b916ad7e46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1601&q=80",
    category: "Lunch",
    title: "The Best Baked Rice and Beans",
    time: "30 Minute",
    rating: 4.3,
    calorie: "450 Cal",
    directions: [
      "Preheat the oven to 350 degrees F (175 degrees C).",
      "Pour white rice into a casserole dish and season with salt, pepper, cumin, chili powder, cayenne, and oregano. Pour in olive oil and stir until rice is thoroughly coated with oil. Add salsa, chicken broth, and kidney beans; stir until evenly combined. Cover very tightly with heavy-duty aluminum foil.",
      "Bake in the preheated oven until rice is tender, about 1 hour and 10 minutes. Remove foil, taste and adjust seasoning if necessary, and fluff with a fork. Serve hot."
    ],
    ingredients: [
      "3 cups basmati rice",
      "2 teaspoons kosher salt, or to taste",
      "1 teaspoon freshly ground black pepper"
    ],
  ),
  modelPopular(
    id: "fdwq322tswe",
    image:
        "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(8).webp?alt=media&token=8b7b8444-6b01-473b-8326-5b57acd174dc",
    category: "Breakfast",
    title: "Eggs Benedict Casserole",
    time: "60 Minute",
    rating: 4.3,
    calorie: "100 Cal",
    directions: [
      "Spray 9x13-inch baking dish with cooking spray.",
      "Whisk eggs, 2 cups milk, green onions, onion powder, and salt together in a large bowl until well mixed.",
      "Layer half the Canadian bacon in the prepared baking dish. Spread English muffins over meat and top with remaining Canadian bacon. Pour egg mixture over casserole. Cover baking dish with plastic wrap and refrigerate overnight.",
      "Preheat the oven to 375 degrees F (190 degrees C).",
      "Bake in preheated oven until eggs are nearly set, about 30 minutes; remove foil. Continue baking until eggs are completely set, about 15 more minutes."
    ],
    ingredients: [
      "cooking spray",
      "8 large eggs",
      "2 cups milk",
      "3 green onions, chopped",
      "1 teaspoon onion powder",
      "¾ pound Canadian bacon, cut into 1/2-inch dice"
    ],
  ),
  modelPopular(
    id: "wfdswngrhert342e",
    image:
        "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(22).webp?alt=media&token=aba7c222-22ee-46d3-8ed1-53dda62fa92a",
    category: "Healty",
    title: "Homemade Yogurt in the Oven",
    time: "40 Minute",
    rating: 4.3,
    calorie: "50 Cal",
    directions: [
      "Turn a self-cleaning oven on for 10 minutes at the lowest temperature, about 170 degrees F (77 degrees C). Turn the oven off and keep door closed to gently heat the oven walls, about 50 minutes.",
      "Pour milk into a heavy pot over medium heat. Cook, stirring often, until an instant-read thermometer registers 185 degrees F (85 degrees C), about 15 minutes. Let cool to 115 degrees F (46 degrees C).",
      "Mix 1 cup of cooled milk and yogurt together in a bowl until incorporated. Pour back into the pot of milk and stir to combine. Ladle the milk mixture into 5 very clean glass canning jars and screw on the lids."
    ],
    ingredients: [
      "1 gallon whole milk",
      "1 cup plain yogurt with active cultures",
      "Milk 300 ml"
    ],
  ),
  modelPopular(
    id: "fbnrt3xfadswe",
    image:
        "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(14).webp?alt=media&token=1fff0594-92dd-4a52-a685-b5a92375e19f",
    category: "Lunch",
    title: "Spicy Thai Basil Chicken (Pad Krapow Gai)",
    time: "30 Minute",
    rating: 4.3,
    calorie: "400 Cal",
    directions: [
      "Whisk chicken broth, oyster sauce, soy sauce, fish sauce, white sugar, and brown sugar together in a bowl until well blended.",
      "Heat large skillet over high heat. Drizzle in oil. Add chicken and stir fry until it loses its raw color, 2 to 3 minutes. Stir in shallots, garlic, and sliced chilies. Continue cooking on high heat until some of the juices start to caramelize in the bottom of the pan, about 2 or 3 more minutes. Add about a tablespoon of the sauce mixture to the skillet; cook and stir until sauce begins to caramelize, about 1 minute.",
      "Pour in the rest of the sauce. Cook and stir until sauce has deglazed the bottom of the pan. Continue to cook until sauce glazes onto the meat, 1 or 2 more minutes. Remove from heat."
    ],
    ingredients: [
      "⅓ cup chicken broth",
      "1 tablespoon oyster sauce",
      "1 tablespoon soy sauce, or as needed",
      "2 teaspoons fish sauce",
      "1 teaspoon white sugar"
    ],
  ),
  modelPopular(
    id: "fdsbfegvcxre2we",
    image:
        "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/image%20(2).webp?alt=media&token=be0aa823-0ab3-4f7e-9dbd-7329568ee2e0",
    category: "Breakfast",
    title: "Easy Shakshuka",
    time: "45 Minute",
    rating: 4.3,
    calorie: "300 Cal",
    directions: [
      "Heat the vegetable oil in a deep skillet over medium heat. Stir in the garlic, onion, and bell pepper; cook and stir until the onion has softened and turned translucent, about 5 minutes. Add the canned tomatoes, paprika and jalapenos; stir, using the back of a spoon to break up the tomatoes. Simmer for about 25 minutes.",
      "Crack an egg into a small bowl, then gently slip the egg into the tomato sauce. Repeat with the remaining eggs. Cook the eggs until the whites are firm and the yolks have thickened but are not hard, 2 1/2 to 3 minutes. If the tomato sauce gets dry, add a few tablespoons of water. Remove the eggs with a slotted spoon, place onto a warm plate, and serve with the tomato sauce and pita bread.",
    ],
    ingredients: [
      "1 tablespoon olive oil",
      "2 cloves garlic, minced",
      "1 onion, cut into 2 inch pieces",
      "1 green bell pepper, cut into 2 inch pieces"
    ],
  ),
];
