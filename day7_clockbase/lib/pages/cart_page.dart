import 'package:day6_clockbase/components/cart_item.dart';
import 'package:day6_clockbase/models/cart.dart';
import 'package:day6_clockbase/models/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Watch individualWatch = value.getUserCart()[index];
                  return CartItem(
                    watch: individualWatch,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
