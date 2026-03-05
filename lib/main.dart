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
class AddButton extends StatelessWidget {
  final String item;

  const AddButton({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    // Hanya rebuild jika item ini berubah statusnya
    final isInCart = context.select<CartModel, bool>(
      (cart) => cart.items.contains(item),
    );

    return TextButton(
      onPressed: isInCart
          ? null
          : () {
              context.read<CartModel>().add(item);
            },
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}

////////////////////////////////////////////////////////
/// HALAMAN KERANJANG
////////////////////////////////////////////////////////

