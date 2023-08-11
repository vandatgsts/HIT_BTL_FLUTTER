import 'package:flutter/material.dart';

class ShoppingCartItem {
  final String name;
  final double price;

  ShoppingCartItem({required this.name, required this.price});
}

class ShoppingCartScreen extends StatelessWidget {
  final List<ShoppingCartItem> cartItems = [
    ShoppingCartItem(name: 'Product 1', price: 10.99),
    ShoppingCartItem(name: 'Product 2', price: 19.99),
    ShoppingCartItem(name: 'Product 3', price: 7.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            subtitle: Text('\$${cartItems[index].price.toStringAsFixed(2)}'),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Total: \$XX.XX', // Replace with actual total
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle the "Checkout" button press
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ShoppingCartScreen(),
  ));
}
