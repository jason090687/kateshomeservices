import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Information',
          style:
              GoogleFonts.notoSerif(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                'Email',
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              leading: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 232, 196, 183),
              ),
              subtitle: const Text('katenicole@gmail.com'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leading: const Icon(
                Icons.key,
                color: Color.fromARGB(255, 232, 196, 183),
              ),
              title: Text(
                'Password',
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: const Text('*************'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              tileColor: Colors.grey[200],
              leading: const Icon(
                Icons.phone,
                color: Color.fromARGB(255, 232, 196, 183),
              ),
              title: Text(
                'Phone Number',
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: const Text('+1(234)40 5156 999'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leading: const Icon(
                Icons.location_on,
                color: Color.fromARGB(255, 232, 196, 183),
              ),
              tileColor: Colors.grey[200],
              title: Text(
                'Address',
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: const Text('El Salvador City, Mis.Or'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              tileColor: Colors.grey[200],
              title: Text(
                'Date of Birth',
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              leading: const Icon(
                Icons.calendar_month,
                color: Color.fromARGB(255, 232, 196, 183),
              ),
              subtitle: const Text('Oct 15, 1997'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
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
                  'Logout',
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/loginpage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
