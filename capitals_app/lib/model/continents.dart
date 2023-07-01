import 'package:flutter/material.dart';

class Continents {
  final String name;
  final String image;
  final Color color;

  const Continents({
    required this.name,
    required this.image,
    required this.color,
  });
}

const Continents asia =
    Continents(name: 'Asia', image: 'asia', color: Colors.green);
const Continents europe =
    Continents(name: 'Europe', image: 'europe', color: Colors.yellow);
const Continents northAmerica = Continents(
    name: 'North America', image: 'north_america', color: Colors.blue);
const Continents southAmerica = Continents(
    name: 'South America', image: 'south_america', color: Colors.brown);
const Continents africa =
    Continents(name: 'Africa', image: 'africa', color: Colors.orange);
const Continents australia =
    Continents(name: 'Australia', image: 'australia', color: Colors.red);

List<Continents> continentsList = [
  asia,
  europe,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
