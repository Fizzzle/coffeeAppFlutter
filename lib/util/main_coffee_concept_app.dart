import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:math';

num _doubleInRange(Random source, int start, int end) =>
    source.nextInt(end) + start;

final random = Random();
final coffees = List.generate(
  _names.length,
  (index) => Coffee(
    image: 'assets/coffee/${index + 1}.png',
    name: _names[index],
    price: _doubleInRange(random, 60, 90),
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
  final num price;
}

final _names = [
  'Взрывной Орех',
  'Тревожный Капучино',
  'Афроамериканский Чай',
  'Карамельный Бум Бумыч',
  'Один Лёд Тут другой Там',
  'Джиган со льдом',
  'Бомбезное Кофе',
  'Ирландское Кофе',
  'Пушка со льдом',
  'Байрактар(взрывная карамель)',
  'Труфельное Кофе',
  'Что то еще',
];
