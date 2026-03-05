import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final String item;

  const AddButtonWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // hanya rebuild jika item berubah status
    final isInCart = context.select<CartProvider, bool>(
      (cart) => cart.items.contains(item),
    );

    return TextButton(
      onPressed: isInCart
          ? null
          : () {
              context.read<CartProvider>().add(item);
            },
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}
