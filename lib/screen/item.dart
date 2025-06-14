//Step 8 : stateful widget
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

  void addQuantity() {
    setState(() {
      quantity++;
    });
  }

  void subtractQuantity() {
    setState(() {
     quantity = (quantity > 0) ? quantity - 1 : 0;
    });
  }
   
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Quantity: $quantity",
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: addQuantity,
                child: const Text("Add"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: subtractQuantity,
                child: const Text("Subtract"),
              ),
            ],
          ),
        ],
      ),
    );

  }
}