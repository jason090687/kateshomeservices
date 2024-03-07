import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'paymentpage.dart';

class ConfirmationPage extends StatelessWidget {
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  final String selectedCategory;
  final String name;
  final String emailAddress;
  final String contact;
  final String price;
  final VoidCallback onDelete;

  ConfirmationPage({
    required this.selectedDate,
    required this.selectedTime,
    required this.selectedCategory,
    required this.name,
    required this.emailAddress,
    required this.contact,
    required this.price,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 196, 183),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 196, 183),
        centerTitle: true,
        title: const Text(
          'Confirmation',
          style: TextStyle(
              fontSize: 18, fontFamily: 'Serif', fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Appointment Details',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Serif'),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Date and Time: ${DateFormat('d MMM, y').format(selectedDate)} - ${selectedTime.format(context)}',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Category: $selectedCategory',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Name: $name',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Email Address: $emailAddress',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Contact: $contact',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 196, 183),
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Price: $price',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 228, 223, 221)
                              .withOpacity(0.9),
                          offset: const Offset(0, 1),
                        ),
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Implement payment logic here
                        // You can navigate to a payment gateway or perform any payment-related tasks
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentPage(
                              name: name,
                              price: price,
                              onPaymentSuccess: () {
                                // Handle any logic after successful payment
                                // For example, you can show a success message
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Payment successful!'),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Payment',
                        style: TextStyle(
                            fontFamily: 'Serif', fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 228, 223, 221)
                              .withOpacity(0.9),
                          offset: const Offset(0, 1),
                        ),
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Call the onDelete callback to delete the appointment
                        onDelete();
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            fontFamily: 'Serif', fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
