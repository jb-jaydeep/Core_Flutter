import 'dart:io';

import 'package:flutter/material.dart';
import '../../utils/componants/image_utils.dart';
int initialIndex = 0;
//for achievement  page
List<String> Achievements = [];
TextEditingController achievementsPageController = TextEditingController();

//for build option page
List<Map> AllBuildoptions = [{
    "image": imagePath + i,
    "title": "Contact Info",
    "route": "ContactInfoPage"
  },
  {
    "image": imagePath + i1,
    "title": "Carrier Objective",
    "route": "CarrierObjectivesPage"
  },
  {
    "image": imagePath + i2,
    "title": "Personal Details",
    "route": "PersonalDetailsPage"
  },
  {"image": imagePath + i3,
    "title": "Education",
    "route": "EducationPage"
  },
  {
    "image":  imagePath + i4,
    "title": "Experiences",
    "route": "ExperiencesPage"
  },
  {
    "image": imagePath + i5,
    "title": "Technical Skills",
    "route": "TechnicalSkillsPage"
  },

  {"image":  imagePath + i7, "title": "Projects", "route": "ProjectsPage"},
  {
    "image": imagePath + i8,
    "title": "Achievements",
    "route": "AchievementsPage"
  },
  {
    "image": imagePath + i9,
    "title": "References",
    "route": "ReferencesPage"
  },
  {
    "image":  imagePath + i10,
    "title": "Declaration",
    "route": "DeclarationPage"
  },
];
//for carrier objective page
GlobalKey <FormState> carrierObjectivePageKey = GlobalKey<FormState>();
TextEditingController carrierObjectiveDescriptionController = TextEditingController();
TextEditingController carrierObjectiveExperienceController = TextEditingController();

String? carrierObjectivePageDescription;
String? carrierObjectiveDesignation;


//for contact info page
TextEditingController contactInfoPageNameController = TextEditingController();
TextEditingController contactInfoPageEmailController = TextEditingController();
TextEditingController contactInfoPagePhoneController = TextEditingController();
TextEditingController contactInfoPageAddress1Controller = TextEditingController();
TextEditingController contactInfoPageAddress2Controller = TextEditingController();
TextEditingController contactInfoPageAddress3Controller = TextEditingController();
String? contactInfoPageName;
String? contactInfoPageEmail;
String? contactInfoPagePhone;
String? contactInfoPageAddress1;
String? contactInfoPageAddress2;
String? contactInfoPageAddress3;

//For declaretion page
TextEditingController declarationPageDegreeController = TextEditingController();
TextEditingController declarationPageDateController = TextEditingController();
TextEditingController declarationPagePlaceController = TextEditingController();
String? declarationPageDegree;
String? declarationPageDate;
String? declarationPagePlace;

bool switchValue = false;

//For education page
TextEditingController educationPageDegreeController = TextEditingController();
TextEditingController educationPageInstituteController = TextEditingController();
TextEditingController educationPagePercentageController = TextEditingController();
TextEditingController educationPagePassingYearController = TextEditingController();
String? educationPageDegree;
String? educationPageInstitute;
String? educationPagePercentage;
String? educationPagePassingYear;

//for experience page
GlobalKey <FormState> experiencePageFormKey = GlobalKey<FormState>();

TextEditingController experiencePageCompanyNameController = TextEditingController();
TextEditingController experiencePageRoleController = TextEditingController();
TextEditingController experiencePagePostController = TextEditingController();
String? experiencePageCompanyName;
String? experiencePageRole;
String? experiencePagePost;

//for personal detail page
GlobalKey <FormState> personalDetailsPageKey = GlobalKey<FormState>();

TextEditingController nationalityController = TextEditingController();
TextEditingController PersonalDetailsPageBirthdayCOntroller = TextEditingController();

String? nationality;
String? personalDetailsPagedob;

//For project detail page
GlobalKey <FormState> projectFormPageKey = GlobalKey<FormState>();

TextEditingController projectPageTitleController = TextEditingController();
TextEditingController ProjectPageRolesController = TextEditingController();
TextEditingController ProjectPageTechnologiesController = TextEditingController();
TextEditingController ProjectPageDescriptionController = TextEditingController();

String? projectPageTitle;
String? projectPageRole;
String? projectPageTechnologies;
String? projectPageDescription;

//For reference page
GlobalKey <FormState> referenceFormkey = GlobalKey<FormState>();

TextEditingController ReferenceNameController = TextEditingController();
TextEditingController ReferencePageDesignationController = TextEditingController();
TextEditingController referencePageOrganizationController = TextEditingController();

String? referenceName;
String? referencePageDesignation;
String? referencePageOrganization;

//for technicalskill page

List <String> TechnicalSkill = [];





bool checkedValue = false;
String martial_status = "Martial status";
bool isEnglish = false;
bool isHindi = false;
bool isGujarati = false;
String? course;
String? school;
String? percentage;
String? yearOfPass;
String? companyName;
String? post;
String? organization;
String? experience;
String? roles;

GlobalKey <FormState> contactFormKey = GlobalKey<FormState>();
GlobalKey <FormState> educationFormkey = GlobalKey<FormState>();
GlobalKey <FormState> declarationPageFormKey = GlobalKey<FormState>();
GlobalKey <FormState> achievementKey = GlobalKey<FormState>();

TextStyle headingStyle = TextStyle( color: Colors.blue,fontSize: 18,);
File? FinalImage;
