import 'package:flutter/material.dart';

class RepairRequestDetails extends StatelessWidget {
  final String name;
  final String contact;
  final String description;

  const RepairRequestDetails({
    required this.name,
    required this.contact,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repair Request Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Name: $name',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16),
            Text(
              'Contact Information: $contact',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16),
            Text(
              'Description of Issue: $description',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}