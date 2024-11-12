import 'package:alphagbc/controller/contactform_controller.dart';
import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  ContactFormState createState() => ContactFormState();
}

class ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  void _clearFields(ContactformControllerImp controller) {
    controller.firstname = '';
    controller.lastname = '';
    controller.emailaddress = '';
    controller.phone = '';
    controller.notes = '';
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(ContactformControllerImp());
    return GetBuilder<ContactformControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contacts',
              style: TextStyle(color: AppColor.green, fontSize: 20),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'Have a question?',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25.0),
            const Text(
                'Contact us whenever you have any questions. We are always here for you!'),
            const SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.0),
                      Text(
                        'Email',
                        style: TextStyle(color: AppColor.green, fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      Text("zccvvb@gmail.com"),
                      SizedBox(height: 25.0),
                      Text(
                        'Phone',
                        style: TextStyle(color: AppColor.green, fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      Text("4566788999"),
                      SizedBox(height: 25.0),
                      Text(
                        'Address',
                        style: TextStyle(color: AppColor.green, fontSize: 20),
                      ),
                      SizedBox(height: 8.0),
                      Text('Strand, London WC2R 2LS, UK'),
                    ],
                  ),
                ),
                const SizedBox(width: 32.0),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'First Name',
                                labelStyle: TextStyle(color: AppColor.green),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.green), // لون الخط الفاصل
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor
                                          .green), // لون الخط عند التركيز
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please fill the First Name field.';
                                }
                                return null;
                              },
                              onSaved: (value) => controller.firstname = value!,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Last Name',
                                labelStyle: TextStyle(color: AppColor.green),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.green), // لون الخط الفاصل
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor
                                          .green), // لون الخط عند التركيز
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please fill the Last Name field.';
                                }
                                return null;
                              },
                              onSaved: (value) => controller.lastname = value!,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Email address',
                                labelStyle: TextStyle(color: AppColor.green),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.green), // لون الخط الفاصل
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor
                                          .green), // لون الخط عند التركيز
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please fill the Email address field.';
                                }
                                return null;
                              },
                              onSaved: (value) =>
                                  controller.emailaddress = value!,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Phone',
                                labelStyle: TextStyle(color: AppColor.green),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.green), // لون الخط الفاصل
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor
                                          .green), // لون الخط عند التركيز
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please fill the Phone field.';
                                }
                                return null;
                              },
                              onSaved: (value) => controller.phone = value!,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Notes',
                                labelStyle: TextStyle(color: AppColor.green),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.green), // لون الخط الفاصل
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor
                                          .green), // لون الخط عند التركيز
                                ),
                              ),
                              maxLines: 3,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please fill the Notes field.';
                                }
                                return null;
                              },
                              onSaved: (value) => controller.notes = value!,
                            ),
                            const SizedBox(height: 16.0),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(AppColor.green),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    // Perform some action with the form data
                                    controller.contactform();
                                    _clearFields(controller);
                                  }
                                },
                                child: const Text(
                                  'SUBMIT',
                                  style: TextStyle(color: AppColor.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
