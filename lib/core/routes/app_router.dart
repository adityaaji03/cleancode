import 'package:flutter/material.dart';
import '../../features/cart/presentation/pages/catalog_page.dart';
import '../../features/cart/presentation/pages/cart_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const CatalogPage(),
    '/cart': (context) => const CartPage(),
  };
}
