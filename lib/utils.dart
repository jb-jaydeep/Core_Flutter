import 'package:flutter/material.dart';

class Global {
  static int firstQuestion = 0;
  static List<dynamic> questions = [
    {
      'id': 0,
      'Qustion': '1.Which of the following corresponds to ‘ek bataa do’?',
      'options1': 'A.Pura',
      'options2': 'B.Sawa',
      'options3': 'C.Adha',
      'options4': 'D.Pauna',
      'ans': 'C.Adha',
      'winning': 5000,
    },
    {
      'id': 1,
      'Qustion': '2.Which of the following gods is also known as ‘Gauri Nandan’?',
      'options1': 'A.Agni',
      'options2': 'B.Indra',
      'options3': 'C.Hanuman',
      'options4': 'D.Ganesha', // A
      'ans': 'D.Ganesha',
      'winning': 10000,
    },
    {
      'id': 2,
      'Qustion':
      '3. In the game of ludo the discs or tokens are of how many colours?',
      'options1': 'A.One',
      'options2': 'B.Two',
      'options3': 'C.Three',
      'options4': 'D.Four', // C
      'ans': 'D.Four',
      'winning': 20000,
    },
    {
      'id': 3,
      'Qustion': '4. Which of these are names of national parks located in Madhya Pradesh?',
      'options1': 'A. Krishna and Kanhaiya',
      'options2': 'B. Kanha and Mahadev',
      'options3': 'C. Ghanshyam and Mayuri',
      'options4': 'D. Girdhar and Gopal', // C
      'ans': 'B. Kanha and Mahadev',
      'winning': 50000,
    },
    {
      'id': 4, 'Qustion': '5. Where was the BRICS summit held in 2014?',
      'options1': 'A. Brazil',
      'options2': 'B. India',
      'options3': 'C. Russia',
      'options4': 'D. China', // D
      'ans': 'A. Brazil',
      'winning': 100000,
    },
    {
      'id': 5,
      'Qustion':
      '6. Who wrote the introduction to the English translation of Rabindranath Tagore’s Gitanjali?',
      'options1': 'A. P.B. Shelley',
      'options2': 'B. Alfred Tennyson',
      'options3': 'C. W.B. Yeats',
      'options4': 'D. T.S. Elliot', // B
      'ans': 'C. W.B. Yeats',
      'winning': 200000,
    },
    {
      'id': 6,
      'Qustion': '7. Which of these leaders was a recipient of a gallantry award in 1987 by a state government for saving two girls from drowning?',
      'options1': 'A.Anandiben Patel',
      'options2': 'B.Vasundhara Raje Scindia',
      'options3': 'C.Uma Bharti',
      'options4': 'D.Mamata Banerjee', // B
      'ans': 'A.Anandiben Patel',
      'winning': 500000,
    },
    {
      'id': 7,
      'Qustion': '8.The wife of which of these famous sports persons was once captain of Indian volleyball team?',
      'options1': 'A.K.D.Jadav',
      'options2': 'B.Dhyan Chand',
      'options3': 'C.Prakash Padukone',
      'options4': 'D.Milkha Singh', // A
      'ans': 'D.Milkha Singh',
      'winning': 1000000,
    },
    {
      'id': 8,
      'Qustion': '9. Which of these terms can only be used for women?',
      'options1': 'A. Dirghaayu',
      'options2': 'B. Suhagan',
      'options3': 'C. Chiranjeevi',
      'options4': 'D. Sushil', // B
      'ans': 'B.Suhagan',
      'winning': 2000000,
    },
    {
      'id': 9,
      'Qustion': '10. Which of these sports requires you to shout out a word loudly during play?',
      'options1': 'A.Ludo',
      'options2': 'B.Kho-kho',
      'options3': 'C.Playing cards',
      'options4': 'D.Chess', // D
      'ans': 'B.Kho-kho',
      'winning': 5000000,
    },
    {
      'id': 10,
      'Qustion': '11. Which of these spices is the smallest in size?',
      'options1': 'A.Ajwain',
      'options2': 'B.Jeera',
      'options3': 'C.Saunf',
      'options4': 'D.Methi Seeds', // D
      'ans': 'A.Ajwain',
      'winning': 10000000,
    },
    {
      'id': 11,
      'Qustion': '12.If Jwala Gutta and Ashwini compete as partners, in which sport are they participating?',
      'options1': 'A.Tennis',
      'options2': 'B.Table Tennis',
      'options3': 'C.Squash',
      'options4': 'D.Badminton', // D
      'ans': 'D.Badminton',
      'winning': 20000000,
    },
    {
      'id': 12,
      'Qustion': '13.Which battle in 1757 marked the beginning of British occupation in India?',
      'options1': 'A.Plassey',
      'options2': 'B.Assaye',
      'options3': 'C.Buxar',
      'options4': 'D.Cuddalore', // D
      'ans': 'A.Plassey',
      'winning': 30000000,
    },
    {
      'id': 13,
      'Qustion': '14. What kind of creature was Bakasur, whom Kansa sent to kill Sri Krishna in his childhood? ',
      'options1': 'A.Bird',
      'options2': 'B.Snake',
      'options3': 'C.Lizard',
      'options4': 'D.Deer', // D
      'ans': 'D.Bird',
      'winning': 40000000,
    },
    {
      'id': 14,
      'Qustion': '15. Which is the second most spoken language of Nepal?',
      'options1': 'A.Bajjika',
      'options2': 'B.Nepali',
      'options3': 'C.Maithili',
      'options4': 'D.Bhojpuri', // D
      'ans': 'C.Maithili',
      'winning': 50000000,
    },
  ];
}

List color = [
  Colors.pink,
  Colors.blue,
  Colors.red,
  Colors.lightBlue,
  Colors.redAccent,
  Colors.orange,
  Colors.amber,
  Colors.blueAccent,
  Colors.purple,
  Colors.yellow,
  Colors.lightGreen,
];