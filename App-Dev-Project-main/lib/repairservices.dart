import 'package:flutter/material.dart';
import 'package:homeservice/requestform.dart';



class RepairService extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const RepairService({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(imageUrl, height: 200, fit: BoxFit.cover,),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add your button press logic here
               showModalBottomSheet(
                  context: context,
                  constraints: const BoxConstraints(
                      maxHeight: 1000), // Adjust the maxHeight as needed
                  isScrollControlled:
                      true, // This allows the bottom sheet to be pushed up by the keyboard
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context)
                              .viewInsets
                              .bottom), // Add padding for the keyboard
                      child: const RepairRequest(),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor:
                    const Color.fromARGB(255, 232, 196, 183), // Text color
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Request Repair',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}