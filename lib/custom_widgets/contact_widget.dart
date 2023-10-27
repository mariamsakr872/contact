import 'package:contact/model/contact_details.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final ContactDetails contact;

  const ContactWidget({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Visibility(
      visible: contact.name != "" ? true : false,
      child: Container(
        width: mediaQuery.width,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${contact.name}",
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Text(
              "Number: ${contact.phone}",
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
