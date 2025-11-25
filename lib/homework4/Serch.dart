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
           return Container(
  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  decoration: BoxDecoration(
    color: Colors.indigo.shade50,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.15),
        blurRadius: 8,
        spreadRadius: 2,
        offset: const Offset(0, 4),
      ),
    ],
  ),
  child: ListTile(
    contentPadding: const EdgeInsets.all(12),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        products[index].picture,
        width: 65,
        height: 65,
        fit: BoxFit.cover,
      ),
    ),
    title: Text(
      products[index].name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    ),
    subtitle: Text(
      "\$${products[index].price.toStringAsFixed(2)}",
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.green,
      ),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      size: 18,
      color: Colors.grey.shade600,
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
