import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/AchievementsPage.dart';
import 'package:resume_builder_app/views/screens/Build_Option_Page.dart';
import 'package:resume_builder_app/views/screens/CarrierObjectivesPage.dart';
import 'package:resume_builder_app/views/screens/ContactInfoPage.dart';
import 'package:resume_builder_app/views/screens/DeclarationPage.dart';
import 'package:resume_builder_app/views/screens/EducationPage.dart';
import 'package:resume_builder_app/views/screens/ExperiencesPage.dart';
import 'package:resume_builder_app/views/screens/HomePage.dart';
import 'package:resume_builder_app/views/screens/PersonalDetailsPage.dart';
import 'package:resume_builder_app/views/screens/ProjectsPage.dart';
import 'package:resume_builder_app/views/screens/ReferencesPage.dart';
import 'package:resume_builder_app/views/screens/TechnicalSkillsPage.dart';
import 'package:resume_builder_app/views/screens/pdfPage.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'BuildOptionPage': (context) => const BuildOptionPage(),
        'ReferencesPage': (context) => const ReferencePage(),
        'ProjectsPage': (context) => const ProjectsPage(),
        'TechnicalSkillsPage': (context) => const TechnicalSkillsPage(),
        'EducationPage': (context) => const EducationPage(),
        'AchievementsPage': (context) => const AchievementsPage(),
        'CarrierObjectivesPage': (context) => const CarrierObjectivesPage(),
        'ContactInfoPage': (context) => const ContactInfoPage(),
        'DeclarationPage': (context) => const DeclarationPage(),
        'ExperiencesPage': (context) => const ExperiencesPage(),
        'PersonalDetailsPage': (context) => const PersonalDetailsPage(),
        'PdfPage': (context) => const pdfPage(),
      },
    );
  }
}
