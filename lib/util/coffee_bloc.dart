import 'package:flutter/widgets.dart';

const _initalPage = 8.0;

class CoffeeBloc {
  final pageCoffeeController = PageController(
    viewportFraction: 0.35,
    initialPage: _initalPage.toInt(),
  );
  final pageTextController = PageController(initialPage: _initalPage.toInt());
  final currentPage = ValueNotifier<double>(_initalPage);
  final textPage = ValueNotifier<double>(_initalPage);

  void _coffeeScrollListener() {
    currentPage.value = pageCoffeeController.page!;
  }

  void init() {
    pageCoffeeController.addListener(_coffeeScrollListener);
    pageTextController.addListener(_textScrollListener);
  }

  void _textScrollListener() {
    textPage.value = pageTextController.page!;
  }

  void dispose() {
    pageCoffeeController.removeListener(_coffeeScrollListener);
    pageTextController.removeListener(_textScrollListener);
    pageCoffeeController.dispose();
    pageTextController.dispose();
  }
}

class CoffeeProvider extends InheritedWidget {
  final CoffeeBloc bloc;

  CoffeeProvider({required this.bloc, required Widget child})
      : super(child: child);

  static CoffeeProvider? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<CoffeeProvider>();

  @override
  bool updateShouldNotify(covariant CoffeeProvider oldWidget) => false;
}
