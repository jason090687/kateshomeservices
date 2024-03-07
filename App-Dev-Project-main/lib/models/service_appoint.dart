import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'confirm_appoint.dart'; // Make sure to import the correct file

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  List<String> repairCategories = [
    'Leak repairs',
    'Pipe installations',
    'Faucet and fixture repairs',
    'Drain cleaning',
    'Water heater installations',
    'Toilet repairs',
    'Sewer line maintenance',
    'Water pressure issues',
    'Pipe insulation',
    'Emergency Plumbing Services',
  ];

  String selectedCategory = 'Select Category';

  List<ConfirmationPage> appointments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Appointment',
          style: TextStyle(
            fontFamily: 'Serif',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Schedule:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Serif',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2002),
                        lastDate: DateTime(2025),
                      );

                      if (pickedDate != null && pickedDate != selectedDate) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }

                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: selectedTime,
                      );

                      if (pickedTime != null && pickedTime != selectedTime) {
                        setState(() {
                          selectedTime = pickedTime;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 196, 183),
                        border: Border.all(
                          color: const Color.fromARGB(255, 232, 196, 183),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${DateFormat('d MMM, y').format(selectedDate)} - ${selectedTime.format(context)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Serif',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 196, 183),
                  border: Border.all(
                    color: const Color.fromARGB(255, 232, 196, 183),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    _showCategoryListDialog();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedCategory,
                        style: const TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Serif',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: nameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 232, 196, 183),
                      ),
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 126, 242, 100),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Serif',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 232, 196, 183),
                      ),
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 126, 242, 100),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: contactController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 232, 196, 183),
                      ),
                      labelText: 'Contact',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 232, 196, 183),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: priceController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.price_check_outlined,
                        color: Color.fromARGB(255, 232, 196, 183),
                      ),
                      labelText: 'Price',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 232, 196, 13),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 232, 196, 183)
                              .withOpacity(0.9),
                          offset: const Offset(0, 1),
                        ),
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      child: const Text(
                        'Submit Appointment',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Serif',
                        ),
                      ),
                      onPressed: () {
                        ConfirmationPage newAppointment = ConfirmationPage(
                          selectedDate: selectedDate,
                          selectedTime: selectedTime,
                          selectedCategory: selectedCategory,
                          name: nameController.text,
                          emailAddress: emailController.text,
                          contact: contactController.text,
                          price: priceController.text,
                          onDelete: () {},
                        );

                        setState(() {
                          appointments.add(newAppointment);
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmationPage(
                              selectedDate: selectedDate,
                              selectedTime: selectedTime,
                              selectedCategory: selectedCategory,
                              name: nameController.text,
                              emailAddress: emailController.text,
                              contact: contactController.text,
                              price: priceController.text,
                              onDelete: () {
                                setState(() {
                                  appointments.remove(newAppointment);
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to show the category list dialog
  Future<void> _showCategoryListDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            children: repairCategories.map((category) {
              return ListTile(
                title: Text(
                  category,
                  style: const TextStyle(
                    fontFamily: 'Serif',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
