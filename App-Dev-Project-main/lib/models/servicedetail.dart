import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDetailsPage extends StatelessWidget {
  final String title;
  final String image;

  const ServiceDetailsPage({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    String description = getDescription(title);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
              fontFamily: 'Serif', fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Details for $title',
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Serif'),
            ),
            const SizedBox(height: 10.0),
            Text(
              description,
              style: const TextStyle(fontSize: 16.0, fontFamily: 'Serif'),
            ),
            // You can customize and extend this section based on your requirements
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 232, 196, 183)
                          .withOpacity(0.9),
                      offset: const Offset(0, 1),
                    )
                  ],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  child: Text(
                    'Set Appointment',
                    style: GoogleFonts.notoSerif(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/appointmentpage');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getDescription(String title) {
    switch (title) {
      case 'Plumbing':
        return 'Our plumbing services ensure a seamless flow of water in your home. From fixing leaks to installing new fixtures, our expert plumbers have you covered.';
      case 'Electrical':
        return 'Illuminate your space with our electrical services. Whether it\'s wiring, lighting, or electrical repairs, our skilled technicians bring light to every corner.';
      case 'HVAC':
        return 'Stay comfortable year-round with our HVAC services. We specialize in heating, ventilation, and air conditioning systems to create the perfect climate in your home.';
      case 'Appliance':
        return 'Keep your appliances running smoothly with our appliance repair services. From kitchen to laundry, we handle all your appliance needs to make your life easier.';
      case 'Chimney':
        return 'Ensure the safety and efficiency of your fireplace with our chimney services. We offer inspections, cleaning, and repairs for a warm and cozy home.';
      case 'Window and Door':
        return 'Enhance the beauty and security of your home with our window and door services. From installation to repairs, we take care of every detail.';
      case 'Drywall':
        return 'Smooth out imperfections in your walls with our drywall repair services. Our skilled craftsmen ensure a flawless finish for a polished and refined look.';
      case 'Roof':
        return 'Protect your home from the elements with our roof construction services. From repairs to new installations, we guarantee a sturdy and reliable roof over your head.';
      default:
        return '';
    }
  }
}
