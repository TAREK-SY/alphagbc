import 'package:alphagbc/controller/bookonline_controller.dart';
import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookOnline extends StatefulWidget {
  const BookOnline({
    super.key,
  });

  @override
  BookOnlineState createState() => BookOnlineState();
}

class BookOnlineState extends State<BookOnline> {
  final _formKey = GlobalKey<FormState>();
  String _selectedLocation = 'select';
  String _selectedService = 'select';
  String _selectedStaffMember = 'select';

  String firstName = '';
  String lastName = '';
  String emailAddress = '';

  final List<String> _locations = [
    'select',
    'Afghanistan',
    'Albania',
    'Algeria',
    // Add all the country names in English
  ];

  final List<String> _services = [
    'select',
    'Web Design and Development',
    'Mobile and Desktop App Development',
    'Graphic Design and Editing',
  ];

  void _clearFields(BookonlineControllerImp controller) {
    controller.firstname = '';
    controller.lastname = '';
    controller.emailaddress = '';
    controller.location = 'select';
    controller.service = 'select';
    controller.staffmember = 'select';
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(BookonlineControllerImp());
    return GetBuilder<BookonlineControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book online now',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text('Request a new appointment',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                ],
              ),
            ),
            const SizedBox(width: 20.0),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Location",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DropdownButtonFormField(
                      value: _selectedLocation,
                      onChanged: (value) {
                        setState(() {
                          _selectedLocation = value!;
                        });
                        controller.location = value!;
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          value: location,
                          child: Text(location),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        hintText: 'Location',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == 'select') {
                          return 'Please select a location.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Service",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DropdownButtonFormField(
                      value: _selectedService,
                      onChanged: (value) {
                        setState(() {
                          _selectedService = value!;
                        });
                        controller.service = value!;
                      },
                      items: _services.map((service) {
                        return DropdownMenuItem(
                          value: service,
                          child: Text(service),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        hintText: 'Service',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == 'select') {
                          return 'Please select a service.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Staff member",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    DropdownButtonFormField(
                      value: _selectedStaffMember,
                      onChanged: (value) {
                        setState(() {
                          _selectedStaffMember = value!;
                        });
                        controller.staffmember = value!;
                      },
                      items: [
                        'select',
                        'Staff Member 1',
                        'Staff Member 2',
                        'Staff Member 3'
                      ].map((staffMember) {
                        return DropdownMenuItem(
                          value: staffMember,
                          child: Text(staffMember),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        hintText: 'Staff member',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == 'select') {
                          return 'Please select a staff member.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "First Name",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          firstName = value;
                        });
                        controller.firstname = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill the First Name field.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Last Name",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          lastName = value;
                        });
                        controller.lastname = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill the Last Name field.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Email address",
                      style: TextStyle(color: AppColor.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email address',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          emailAddress = value;
                        });
                        controller.emailaddress = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill the Email address field.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Save the form data and perform any necessary actions
                          controller.bookonline();
                          _clearFields(controller);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColor.green),
                      ),
                      child: const Text(
                        'BOOK',
                        style: TextStyle(color: AppColor.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
