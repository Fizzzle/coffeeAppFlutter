import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:math';

double _doubleInRange(Random source, num start, num end) =>
    source.nextDouble() * (end - start) + 100;

final random = Random();
final coffees = List.generate(
  _names.length,
  (index) => Coffee(
    image: 'assets/coffee/${index + 1}.png',
    name: _names[index],
    price: "23",
    //  _doubleInRange(random, 3, 7),
  ),
);

class Coffee {
  Coffee({
    required this.name,
    required this.image,
    required this.price,
  });
  final String name;
  final String image;
  final String price;
}

final _names = [
  'Карамельный Холодный Кофе',
  'Холодный Матча',
  'Карамельный Бум Латте',
  'Взрывной Орех',
  'Капучино',
  'Тревожный Кофе',
  'Афроамериканский Чай',
  'Ирландское Кофе',
  'Труфельное Кофе'
];
