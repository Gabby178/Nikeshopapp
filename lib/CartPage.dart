import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/CartItem.dart';
import 'package:shoeapp/models/shoe.dart';

import 'models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.getuserCart().length,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    shoe individualshoe = value.getuserCart()[index];

                    return Cartitem(
                      Shoe: individualshoe,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
