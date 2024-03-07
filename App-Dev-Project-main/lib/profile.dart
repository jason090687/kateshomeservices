import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_left),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 232, 196, 183),
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 232, 196, 183),
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kate Nicole Magpulong',
                      style: GoogleFonts.notoSerif(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'katenicole@gmail.com',
                      style: GoogleFonts.notoSerif(fontSize: 12),
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ), // Added spacing between the columns
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('Account Information'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountInformationPage()));
                        Navigator.pushNamed(context, '/account_info');
                      },
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('My Appointment'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/appointmentpage');
                      },
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.credit_card,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('Payment Method'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethodPage()));
                      },
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.delivery_dining,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('Address'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryAddressPage())),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Added spacing between the columns
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    const Divider(),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('Settings'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                      },
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.headphones,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('Help Center'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => HelpCenterPage()));
                      },
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 196, 183),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 23,
                          )),
                      title: const Text('About Us'),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
