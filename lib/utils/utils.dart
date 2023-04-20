import 'package:flutter/material.dart';
import 'dart:io';

TextEditingController addPageFormFirstNameController = TextEditingController();
TextEditingController addPageFormLastNameController = TextEditingController();
TextEditingController addPageFormPhoneNumberController = TextEditingController();
TextEditingController addPageFormEmailController = TextEditingController();
String? firstName;
String? lastName;
String? phoneNumber;
String? email;
File? image;
GlobalKey<FormState> addPageKey = GlobalKey<FormState>();
GlobalKey<FormState> editPageKey = GlobalKey<FormState>();
class Contact {
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  File? image;

  Contact({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
     this.image,
  });
}

class Globals {
  static List<Contact> allContact = [];
}
