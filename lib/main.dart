import 'package:cleancode/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes/app_router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: AppRouter.routes,
    );
  }
}

////////////////////////////////////////////////////////
/// HALAMAN KATALOG
////////////////////////////////////////////////////////


////////////////////////////////////////////////////////
/// WIDGET TOMBOL TAMBAH
////////////////////////////////////////////////////////


////////////////////////////////////////////////////////
/// HALAMAN KERANJANG
////////////////////////////////////////////////////////

