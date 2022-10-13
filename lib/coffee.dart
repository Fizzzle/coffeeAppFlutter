import 'package:coffee_app/util/coffee_concept_list.dart';
import 'package:coffee_app/util/main_coffee_concept_app.dart';
import 'package:flutter/material.dart';

class MainCoffeeConceptApp extends StatelessWidget {
  const MainCoffeeConceptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: CoffeeConceptList(),
    );
  }
}
