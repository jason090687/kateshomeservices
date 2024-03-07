import 'package:flutter/material.dart';

import 'models/service_card.dart';
import 'models/servicedetail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading =
      true; // Initially set to true for showing the loading indicator

  final List<Map<String, String>> services = [
    {'title': 'Plumbing', 'image': 'assets/images/plumb.png'},
    {'title': 'Electrical', 'image': 'assets/images/Electrical-light.png'},
    {'title': 'HVAC', 'image': 'assets/images/hvac.png'},
    {'title': 'Appliance', 'image': 'assets/images/appliance.png'},
    {'title': 'Chimney', 'image': 'assets/images/chimney.png'},
    {'title': 'Window and Door', 'image': 'assets/images/Window_and_Door.png'},
    {'title': 'Drywall', 'image': 'assets/images/Drywall_Repair.png'},
    {'title': 'Roof', 'image': 'assets/images/roof-construction.png'},
    // Add more services as needed
  ];

  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the loading indicator
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false; // Set to false to hide the loading indicator
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isLoading
          ? null
          : AppBar(
              backgroundColor: const Color.fromARGB(255, 232, 196, 183),
              title: const Text(
                'Kate\'s Home Services',
                style:
                    TextStyle(fontFamily: 'Serif', fontWeight: FontWeight.bold),
              ),
            ),
      drawer: isLoading
          ? null
          : Drawer(
              child: Container(
                color: const Color.fromARGB(255, 232, 196, 183),
                child: ListView(
                  children: [
                    const DrawerHeader(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile.jpg'),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Kate Nicole',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Serif'),
                            ),
                            Text(
                              'katenicole@gmail.com',
                              style:
                                  TextStyle(fontSize: 10, fontFamily: 'Serif'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Serif'),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text(
                        'About',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Serif'),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/aboutpage');
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_month),
                      title: const Text(
                        'My Appointment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Serif'),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/appointmentpage');
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Serif'),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/loginpage');
                      },
                    ),
                  ],
                ),
              ),
            ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 232, 196, 183),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'We\'ll serve you with affordable home services.',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Serif'),
                        ),
                      ),
                    ),
                    const Divider(),
                    GridView.count(
                      padding: const EdgeInsets.all(20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: services
                          .map(
                            (service) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceDetailsPage(
                                      title: service['title']!,
                                      image: service['image']!,
                                    ),
                                  ),
                                );
                              },
                              child: ServiceCard(
                                image: service['image']!,
                                title: service['title']!,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
