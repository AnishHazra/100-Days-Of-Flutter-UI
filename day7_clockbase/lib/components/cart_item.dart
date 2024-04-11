import 'package:day6_clockbase/models/cart.dart';
import 'package:day6_clockbase/models/watch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Watch watch;
  CartItem({super.key, required this.watch});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //removed item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.watch);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.watch.imagePath),
        title: Text(widget.watch.name),
        subtitle: Text(widget.watch.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
