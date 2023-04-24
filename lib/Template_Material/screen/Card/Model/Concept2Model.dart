import 'package:flutter/material.dart';

class DiscoverDataModel1 {
  final String? title;
  final String? image;
  final String? location;
  final String? calorie;
  final String? price;
  final String? name;
  final String? topping;
  final List<Color>? colors;
  final String? profilePicture;

  DiscoverDataModel1(
      {this.title,
      this.image,
      this.location,
      this.calorie,
      this.price,
      this.colors,
      this.name,
      this.topping,
      this.profilePicture});
}

List discover = [
  DiscoverDataModel1(
    title: "Roast Veggies",
    image: "assets/images/plate_food/20.png",
    location: "New York",
    calorie: "255 Cal",
    price: "\$ 15.00",
    name: "Martha Wix",
    profilePicture:
        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [
      Color(0xFFFEE140),
      Color(0xFFFA709A),
    ],
  ),
  DiscoverDataModel1(
    title: "Chana Masala Egg",
    image: "assets/images/plate_food/4.png",
    location: "Los Angeles",
    calorie: "220 Cal",
    price: "\$ 10.00",
    name: "Emma Witson",
    profilePicture:
        "https://images.pexels.com/photos/3779853/pexels-photo-3779853.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [
      Color(0xFFF9D976),
      Color(0xFFF39F86),
    ],
  ),
  DiscoverDataModel1(
    title: "Black Bean Burritos",
    image: "assets/images/plate_food/9.png",
    location: "Chicago",
    calorie: "400 Cal",
    price: "\$ 18.00",
    name: "Olivia Turner",
    profilePicture:
        "https://images.pexels.com/photos/3775540/pexels-photo-3775540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFF8DBA4), Color(0xFFE09082)],
  ),
  DiscoverDataModel1(
    title: "Shrimp Pad Thai",
    image: "assets/images/plate_food/19.png",
    location: "San Antonio",
    calorie: "320 Cal",
    price: "\$ 25.00",
    name: "Issabela Lopi",
    profilePicture:
        "https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFFFCC2F), Color(0xFFEF5734)],
  ),
  DiscoverDataModel1(
    title: "Turkey Scallopini",
    image: "assets/images/plate_food/17.png",
    location: "New York",
    calorie: "150 Cal",
    price: "\$ 20.00",
    name: "Martha Wibox",
    profilePicture:
        "https://images.pexels.com/photos/4153629/pexels-photo-4153629.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFF07654), Color(0xFFF5DF2E)],
  ),
  DiscoverDataModel1(
    title: "Creamy Paprika Pork",
    image: "assets/images/plate_food/12.png",
    location: "Chicago",
    calorie: "100 Cal",
    price: "\$ 10.00",
    name: "Mia Rullio",
    profilePicture:
        "https://images.pexels.com/photos/3781543/pexels-photo-3781543.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFF8DE7E), Color(0xFFD99058)],
  ),
  DiscoverDataModel1(
    title: "Taco Pizza Squares",
    image: "assets/images/plate_food/2.png",
    location: "San Diego",
    calorie: "220 Cal",
    price: "\$ 22.00",
    name: "Amelia Turner",
    profilePicture:
        "https://images.pexels.com/photos/3763152/pexels-photo-3763152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFE8807F), Color(0xFFE6C84F)],
  ),
  DiscoverDataModel1(
    title: "Fattoush Bread Salad",
    image: "assets/images/plate_food/5.png",
    location: "San Francisco",
    calorie: "350 Cal",
    price: "\$ 20.00",
    name: "Martha Wibox",
    profilePicture:
        "https://images.pexels.com/photos/3781545/pexels-photo-3781545.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFD14545), Color(0xFFFFD045)],
  ),
  DiscoverDataModel1(
    title: "Garlic Chicken",
    image: "assets/images/plate_food/8.png",
    location: "New York",
    calorie: "300 Cal",
    price: "\$ 15.00",
    name: "Abhigail Ronte",
    profilePicture:
        "https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFFCD181), Color(0xFFE79087)],
  ),
  DiscoverDataModel1(
    title: "Hoisin Pork Egg",
    image: "assets/images/plate_food/10.png",
    location: "Boston",
    calorie: "150 Cal",
    price: "\$ 20.00",
    name: "Riley Asop",
    profilePicture:
        "https://images.pexels.com/photos/4107117/pexels-photo-4107117.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    topping: "sauce, mayonnaise, cheese",
    colors: [Color(0xFFFFDD00), Color(0xFFFBB034)],
  ),
];
