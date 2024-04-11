import 'package:day6_clockbase/models/watch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WatchTile extends StatelessWidget {
  Watch watch;
  void Function()? onTap;
  WatchTile({super.key, required this.watch, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //watch pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(watch.imagePath),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              watch.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //watch name
                    Text(
                      watch.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    //price
                    Text(
                      '\$${watch.price}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                //plue button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //button to add to cart
        ],
      ),
    );
  }
}
