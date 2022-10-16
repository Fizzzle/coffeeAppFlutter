import 'package:coffee_app/util/coffee_bloc.dart';
import 'package:coffee_app/util/coffee_concept_home.dart';
import 'package:flutter/material.dart';

class MainCoffeeConceptApp extends StatefulWidget {
  const MainCoffeeConceptApp({super.key});

  @override
  State<MainCoffeeConceptApp> createState() => _MainCoffeeConceptAppState();
}

class _MainCoffeeConceptAppState extends State<MainCoffeeConceptApp> {
  final bloc = CoffeeBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: CoffeeProvider(
        bloc: bloc,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CoffeeConceptHome(),
        ),
      ),
    );
  }
}
