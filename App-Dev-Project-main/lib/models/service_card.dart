import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String image;

  const ServiceCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 100, width: 100),
          const SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
