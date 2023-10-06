import 'package:flutter/material.dart';
import 'package:shoeapp/Homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Nike Shop'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'images/nike.jpeg',
              height: 240.0,
            ),
          ),

          const SizedBox(
            height: 28,
          ),

          const Text(
            'Just Do It',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 28.0,
          ),

          const Text(
            'Brand new Sneakers and custom kicks made with Premium Quality',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 80.0,
          ),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(10)),
              padding: EdgeInsets.all(20),
              child: const Text(
                'Shop Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
