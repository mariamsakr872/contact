import 'package:contact/model/contact_details.dart';
import 'package:contact/custom_widgets/custom_button.dart';
import 'package:contact/custom_widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/contact_widget.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = "contact";

  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int currentIndex = 0;
  List<ContactDetails> contacts = [
    ContactDetails(name: "", phone: ""),
    ContactDetails(name: "", phone: ""),
    ContactDetails(name: "", phone: ""),
  ];

  TextEditingController myName = TextEditingController();
  TextEditingController myPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9D9D9D),
      appBar: AppBar(
        title: const Text(
          "Contact Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              text: "Enter Your Name here",
              icon: const Icon(
                CupertinoIcons.pen,
                size: 25,
                color: Color(0xFF2194EF),
              ),
              textEditingController: myName,
            ),
            CustomTextField(
              text: "Enter Your Number here",
              icon: const Icon(
                Icons.phone,
                size: 25,
                color: Color(0xFF2194EF),
              ),
              textEditingController: myPhone,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      title: "Add",
                      color: const Color(0xFF2194EF),
                      onClick: onAddClicked),
                  CustomButton(
                      title: "Delete",
                      color: const Color(0xFFFD5252),
                      onClick: onDeleteClicked),
                ],
              ),
            ),
            ContactWidget(contact: contacts[0]),
            ContactWidget(contact: contacts[1]),
            ContactWidget(contact: contacts[2]),
          ],
        ),
      ),
    );
  }

  onAddClicked() {
    if (currentIndex > 2) return;
    contacts[currentIndex].name = myName.text;
    contacts[currentIndex].phone = myPhone.text;
    currentIndex++;
    setState(() {});
  }

  onDeleteClicked() {
    if (currentIndex == 0) return;
    contacts[currentIndex - 1].name = "";
    contacts[currentIndex - 1].phone = "";
    currentIndex--;
    setState(() {});
  }
}
