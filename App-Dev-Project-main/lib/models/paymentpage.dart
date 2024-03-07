import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final String name;
  final String price;
  final VoidCallback onPaymentSuccess;

  PaymentPage({
    required this.name,
    required this.price,
    required this.onPaymentSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 196, 183),
        centerTitle: true,
        title: const Text(
          'Payment',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Serif',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 60,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 196, 183),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '₱ $price',
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Serif',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
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
                    // Implement your payment logic here
                    // You can navigate to a payment gateway or perform any payment-related tasks

                    // After successful payment, call the onPaymentSuccess callback
                    onPaymentSuccess();
                  },
                  child: const Text(
                    'Pay Now',
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
