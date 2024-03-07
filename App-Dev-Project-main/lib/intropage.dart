import 'package:flutter/material.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({Key? key}) : super(key: key);

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'KATE\'S',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'Serif'),
                ),
                Container(
                  height: 180,
                  width: 120,
                  child: const Image(
                      image: AssetImage('assets/images/repair_logo_app.png')),
                ),
                const Text(
                  'Welcome to our repair home services application! We\'re here to help you with all your home repair needs. Whether you have a leaky faucet, a faulty electrical outlet, or a malfunctioning HVAC system, we\'ve got you covered.',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Add your button press logic here
                    Navigator.pushNamed(context, '/loginpage');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        const Color.fromARGB(255, 232, 196, 183), // Text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
