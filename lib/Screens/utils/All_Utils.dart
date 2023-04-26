import 'dart:io';

import 'package:flutter/material.dart';

String imagePath = "assets/images/";

String SplashImage = "SplashImage.png";

GlobalKey <FormState> invoiceKey = GlobalKey<FormState>();
TextEditingController companyNameController = TextEditingController();
TextEditingController companyAddressController = TextEditingController();
TextEditingController companyAddress1Controller = TextEditingController();
TextEditingController companyGstController = TextEditingController();
TextEditingController companyContactController = TextEditingController();
String? companyName;
String? companyAddress;
String? companyAddress1;
String? companyGst;
String? CompanyContact;



File? FinalImage;
TextEditingController InvoiceNoController = TextEditingController();
TextEditingController InvoiceDateController = TextEditingController();
String? invoiceNo;
String? invoiceDate;


GlobalKey <FormState> partyKey = GlobalKey<FormState>();
TextEditingController partyNameController = TextEditingController();
TextEditingController partyAddressController = TextEditingController();
TextEditingController partyAddress1Controller = TextEditingController();
TextEditingController partyGstController = TextEditingController();
TextEditingController partyContactController = TextEditingController();
String? partyName;
String? partyAddress;
String? partyAddress1;
String? partyGst;
String? partyContact;

GlobalKey <FormState> itemKey = GlobalKey<FormState>();
GlobalKey <FormState> itemD1Key = GlobalKey<FormState>();
GlobalKey <FormState> itemDKey = GlobalKey<FormState>();
TextEditingController itemNameController = TextEditingController();
TextEditingController itemQuantityController = TextEditingController();
TextEditingController itemRateController = TextEditingController();
TextEditingController itemUnitController = TextEditingController();
String? itemName;
String? itemQuantity;
String? itemUnit;
String? itemRate;
String unit = "Bags";
String Box = "Bags";
String tax = "WithoutTax";
String WithoutTax = "WithoutTax";
Color dbcolor = Colors.white;
Color dbcolor1= Colors.black87;
List <Map>itemList = [];



class Globel {
  //company logo
  //experience
  static String? invoicenumber;
  static String? invoicedate = "";
  static String? invoiceduedate = "";
  //Your Details
  static String? companyname = "";
  static String? address1 = "";
  static String? pincode = "";
  static String? city = "";
  static String? phone = "";
  //Client Details
  //Items
  static var allitems = [];
  static var allqty = [];
  static var allrate = [];
  static var amount = [];
  static num subtotal = 0;
  static num gst = 0;
  static dynamic initalDropdownVal = null;
  static num gstrate = 0;
  static num total = 0;
}
