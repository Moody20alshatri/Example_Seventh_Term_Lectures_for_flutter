import 'package:flutter/material.dart';

class SerachPage4 extends StatelessWidget {
  SerachPage4({super.key});

  final List<product> products = [
    product(name: "Laptop", price: 999.99, picture: "assets/images/images/laptopwebp.webp"),
          product(name: "Smartphone", price: 699.99, picture: "assets/images/images/Smartphone.webp"),
          product(name: "Headphones", price: 199.99, picture: "assets/images/images/Headphones.webp"),
          product(name: "Smartwatch", price: 299.99, picture: "assets/images/images/Smartwatch.webp"),
          product(name: "Tablet", price: 499.99, picture: "assets/images/images/Tablet.webp"),
          product(name: "Router", price: 59.99, picture: "assets/images/images/Router.webp"),
          product(name: "Smart TV", price: 999.99, picture: "assets/images/images/Smart.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        // height: 400,
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
           return Card(
color: Colors.indigo.shade50,
  elevation: 4,
  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            products[index].picture,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              products[index].name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              "\$${products[index].price}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    ),
  ),
);

          },
        ),
      ),
    );
  }
}

class product {
  String name;
  double price;
  String picture;

  product({required this.name, required this.price, required this.picture});
}
