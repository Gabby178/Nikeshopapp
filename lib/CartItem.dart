import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/models/cart.dart';
import 'package:shoeapp/models/shoe.dart';

class Cartitem extends StatefulWidget {
  shoe Shoe;

  Cartitem({super.key, required this.Shoe});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  void removeitemfromCart() {
    Provider.of<Cart>(context, listen: false).removeitemtocart(widget.Shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.Shoe.image),
        title: Text(widget.Shoe.name),
        subtitle: Text(widget.Shoe.price),
        trailing:
            IconButton(onPressed: removeitemfromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
