import 'package:flutter/material.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Contact me",
              textAlign: TextAlign.center,
              style: PageMainheading.nameOfTextStyle,
            ),
            const SizedBox(
              height: 9,
            ),
            TextFormField(
              cursorColor: Colors.white,
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _messageController,
              decoration: const InputDecoration(
                labelText: 'Message',
              ),
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _sendEmail();
                }
              },
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }

  void _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'your.email@example.com',
      queryParameters: {
        'subject': 'Contact from ${_nameController.text}',
        'body': _messageController.text,
      },
    );
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }
}
