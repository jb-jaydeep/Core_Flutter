import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/image_utils.dart';
List<Map> rowData = [
  {
    'logo': (imagePath + i2),
    'footer': "Fashion",
  },
  {
    'logo': (imagePath + i3),
    'footer': "Mobiles",
  },
  {
    'logo': (imagePath + i4),
    'footer': "Headphones",
  },
  {
    'logo': (imagePath + i5),
    'footer': "Camera",
  },
  {
    'logo': (imagePath + i6),
    'footer': "Beauty",
  },
  {
    'logo': (imagePath + i7),
    'footer': "Appliances",
  },
  {
    'logo': (imagePath + i8),
    'footer': "Grocery",
  },
  {
    'logo': (imagePath + i9),
    'footer': "Toys",
  },
];
List<Map> menFashionData = [
  {
    'logo' : (imagePath + f1),
    'fashionDataLogo': (imagePath + f1),
    'fashionDataBrand': "LONDON CREATION",
    'fashionDataDetail':'''Men's Cotton Striped Polo Neck
                         T-Shirt''',
    'fashionDataPrize': "799",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 1 left in stock.",
    'fashionData1':(imagePath +f11),
    'fashionData2':(imagePath +f111),
    'fashionData3':(imagePath +f1111),
  },

  {
    'logo' : (imagePath + f2),
    'fashionDataLogo': (imagePath + f2),
    'fashionDataBrand': " ADRO",
    'fashionDataDetail':"Regular Fit T-shirt",
    'fashionDataPrize': "494",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 5 left in stock.",
    'fashionData1':(imagePath +f22),
    'fashionData2':(imagePath +f222),
    'fashionData3':(imagePath +f2222),


  },
  {
    'logo' : (imagePath + f3),
    'fashionDataLogo': (imagePath + f3),
    'fashionDataBrand': "Allen Solly",
    'fashionDataDetail':"Slim Fit Casual Shirt",
    'mfashionDataPrize': "749",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 20 left in stock.",
    'fashionData1':(imagePath +f33),
    'fashionData2':(imagePath +f333),
    'fashionData3':(imagePath +f3333),
  },
  {
    'logo' : (imagePath + f4),
    'fashionDataLogo': (imagePath + f4),
    'fashionDataBrand': "Peter England ",
    'fashionDataDetail':"Men Shirt",
    'fashionDataPrize': "1099",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 10 left in stock.",
    'fashionData1':(imagePath +f44),
    'fashionData2':(imagePath +f444),
    'fashionData3':(imagePath +f4444),
  },
  {
    'logo' : (imagePath + f5),
    'fashionDataLogo': (imagePath + f5),
    'fashionDataBrand': "Van Hausen",
    'fashionDataDetail':"Men Formal Trousers",
    'fashionDataPrize': "1799",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +f55),
    'fashionData2':(imagePath +f555),
    'fashionData3':(imagePath +f5555),
  },
  {
    'logo' : (imagePath + f6),
    'fashionDataLogo': (imagePath + f6),
    'fashionDataBrand': "Raymond",
    'fashionDataDetail':"Dark Blue Trouser",
    'fashionDataPrize': "1199",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +f66),
    'fashionData2':(imagePath +f666),
    'fashionData3':(imagePath +f6666),
  },
  {
    'logo' : (imagePath + f7),
    'fashionDataLogo': (imagePath + f7),
    'fashionDataBrand': "Jungle Berry",
    'fashionDataDetail':"Men's Cotton Shorts | Pack Of 3",
    'fashionDataPrize': "799",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +f77),
    'fashionData2':(imagePath +f777),
    'fashionData3':(imagePath +f7777),

  },


];

List<Map> womenFashionData = [
  {
    'logo' : (imagePath + ff1),
    'fashionDataLogo': (imagePath + ff1),
    'fashionDataBrand': "Aahwan",
    'fashionDataDetail':"Girls' Ribbed Crop Tank Top",
    'fashionDataPrize': "299",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +ff11),
    'fashionData2':(imagePath +ff111),
    'fashionData3':(imagePath +ff1111),
  },

  {
    'logo' : (imagePath + ff2),
    'fashionDataLogo': (imagePath + ff2),
    'fashionDataBrand': "DHRUVI TRENDZ",
    'fashionDataDetail':"Office Wear & Casual Top",
    'fashionDataPrize': "450",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 5 left in stock.",
    'fashionData1':(imagePath +ff22),
    'fashionData2':(imagePath +ff222),
    'fashionData3':(imagePath +ff2222),

  },
  { 'logo' : (imagePath + ff3),
    'fashionDataLogo': (imagePath + ff3),
    'fashionDataBrand': "JUNEBERRY",
    'fashionDataDetail':"Cotton Tie Dye T-shirt",
    'mfashionDataPrize': "299",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 2 left in stock.",
    'fashionData1':(imagePath +ff33),
    'fashionData2':(imagePath +ff333),
    'fashionData3':(imagePath +ff3333),
  },
  {
    'logo' : (imagePath + ff4),
    'fashionDataLogo': (imagePath + ff4),
    'fashionDataBrand': "FUNDAY FASHION",
    'fashionDataDetail':"Women's Pure Cotton Casual",
    'fashionDataPrize': "399",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "Only 15 left in stock.",
    'fashionData1':(imagePath +ff44),
    'fashionData2':(imagePath +ff444),
    'fashionData3':(imagePath +ff4444),
  },
  {
    'logo' : (imagePath + ff5),
    'fashionDataLogo': (imagePath + ff5),
    'fashionDataBrand': "Yash Gallery",
    'fashionDataDetail':"Women's Cotton Straight\n Geomatrical Printed Night Suit",
    'fashionDataPrize': "799",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +ff55),
    'fashionData2':(imagePath +ff555),
    'fashionData3':(imagePath +ff5555),
  },
  {
    'logo' : (imagePath + ff6),
    'fashionDataLogo': (imagePath + ff6),
    'fashionDataBrand': "Raymond",
    'fashionDataDetail':"Regular Fit T-shirt",
    'fashionDataPrize': "799",
    'fashionDataDelivery':"FREE Delivery by Amazon",
    'fashionDataStock': "",
    'fashionData1':(imagePath +ff66),
    'fashionData2':(imagePath +ff666),
    'fashionData3':(imagePath +ff6666),
  },



];

