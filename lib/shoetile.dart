import 'package:flutter/material.dart';
import 'package:shoeapp/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  shoe Shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.Shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 250.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(Shoe.image)),
          //description
          Text(
            Shoe.description,
            style: const TextStyle(color: Colors.grey),
          ),

          const SizedBox(
            height: 80,
          ),
          //price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Shoe.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      Shoe.price,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => onTap?.call(),
                child: Container(
                    padding: const EdgeInsets.all(25.0),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
