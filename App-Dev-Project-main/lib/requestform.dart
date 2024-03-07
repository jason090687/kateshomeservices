import 'package:flutter/material.dart';
import 'package:homeservice/repairdetails.dart';

class RepairRequest extends StatefulWidget {
  const RepairRequest({super.key});



  @override
  _RepairRequestState createState() => _RepairRequestState();
}

class _RepairRequestState extends State<RepairRequest> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _contact = '';
  String _description = '';

  void _submitForm() {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RepairRequestDetails(
          name: _name,
          contact: _contact,
          description: _description,
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
       return SingleChildScrollView(
         child: Form(
               key: _formKey,
               child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact Information'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your contact information';
                  }
                  return null;
                },
                onSaved: (value) {
                  _contact = value!;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Description of Issue'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please describe the issue';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
                maxLines: null,
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.all(16.0), // Adjust the margin as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
                  color: const Color.fromARGB(
                      255, 232, 196, 183), // Set the background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Set shadow color
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // Set shadow offset
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Set button background color to be transparent
                    elevation: 0, // Remove default button elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Same as the container's border radius
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    child: const Text(
                      'Submit Request',
                      style: TextStyle(
                        color: Colors.black, // Set text color
                        fontSize: 18.0, // Set text font size
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
               ),
             ),
       );
  }
}
