import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/shoetile.dart';

import 'models/cart.dart';
import 'models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //search
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.grey[100]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Everyone flies.. some fly longer than others',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    shoe Shoe = value.getshoelist()[index];
                    return ShoeTile(
                      Shoe: Shoe,
                    );
                  }),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 5.0),
            //   child: Divider(
            //     color: Colors.white,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
