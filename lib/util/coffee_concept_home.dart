import 'package:coffee_app/util/coffee_concept_list.dart';
import 'package:coffee_app/util/main_coffee_concept_app.dart';
import 'package:flutter/material.dart';

class CoffeeConceptHome extends StatelessWidget {
  const CoffeeConceptHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -1) {
            Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: const Duration(microseconds: 650),
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child: CoffeeConceptList(),
                  );
                },
              ),
            );
          }
        },
        child: Stack(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFFA89276), Colors.white]),
                ),
              ),
            ),
            Positioned(
              height: size.height * 0.55,
              left: 0,
              right: 0,
              top: size.height * 0.05,
              child: Hero(
                tag: coffees[8].name,
                child: Image.asset(coffees[7].image),
              ),
            ),
            Positioned(
              height: size.height * 0.85,
              left: 0,
              right: 0,
              bottom: -size.height * 0.15,
              child: Hero(
                tag: coffees[9].name,
                child: Image.asset(
                  coffees[8].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              height: size.height * 0.7,
              left: 0,
              right: 0,
              bottom: -size.height * 0.38,
              child: Hero(
                tag: coffees[10].name,
                child: Image.asset(coffees[9].image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
