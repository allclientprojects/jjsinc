import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:jjsinc/services/user_data_service.dart';
import 'package:jjsinc/utils/locator.dart';


const supported_locales = [
  Locale('en'),
  // Locale('de'),
];



class Labels {
  Labels(this.locale);

  final Locale locale;

  static Labels? of(BuildContext context) {
    return Localizations.of<Labels>(context, Labels);
  }

  static Map<String, Map<String, dynamic>> localizedValues = {
    'en': {
      'exitAppWarningText': 'Are you sure you want to close the app?',
      'exitAppWarningOptionStay': 'Stay',
      'exitAppWarningOptionExit': 'Close',
      'enforcedUpdateTitle': 'Update required',
      'enforcedUpdateMessage':
      'We\'re sorry to inform you that this version of the app is no longer supported. Please update to a more recent version of the app to continue.',
      'enforcedUpdateButtonLabel': 'Update now!',
      'timeCodeYear': 'year',
      'timeCodeYears': 'years',
      'saveButtonLabel': 'save',
      'cancelButtonLabel': 'Cancel',
      'confirmButtonlabel': 'yes',
      'salaryRangePrefix': 'from',
      'salaryRangeSeperator': 'to',
      'emailTextBoxEmptyError': 'Please enter your email address.',
      'chatRoomNewMessageTextBoxHinttext': 'New message ...',
      'chatRoomJobAdIsNotPublished':
      'The job for this chat is no longer active.',
      'locationSelectorInvalidLocation': 'Invalid location',
      'locationSelectorVerifyCTA': 'Verify address',
      'locationSelectorAddressSectionTitle': 'Address',
      'locationSelectorStreetField': 'Street, no.',
      'locationSelectorZipCodeField': 'Zip code',
      'locationSelectorCityField': 'City',
      'locationSelectorError': 'Invalid Address',
      'distancAboutLabel': 'about',
      'loginScreenEmailFieldLabel': 'Email address',
      'loginScreenPasswordFieldLabel': 'Password',
      'loginScreenLoginButtonLabel': 'Login',
      'loginScreenSignUpButtonLabel': 'Sign up',
      'loginScreenSignUpEmailEmptyError': 'Please enter your email address.',
      'loginScreenPasswordEmptyError': 'Please enter your password.',
      'loginScreenPasswordTooShortError':
      'The password has to consist of at least eight characters.',
      'loginScreenErrorPopupLabel': 'Whoops',
      'loginScreenErrorPopupText': 'Login failed',
      'loginScreenErrorPopupEmailNotFoundText':
      'Unfortunately we do not know this email address yet.',
      'loginScreenErrorPopupInvalidPassword':
      'This email and password combination is not correct.',
      'loginScreenErrorPopupUserDisabledText':
      'Your account has been frozen. Please contact our customer service!',
      'loginScreenErrorPopupDefaultText':
      'Login failed! Please try again later.',
      'signUpFormLabel': 'Registration',
      'signUpScreenWelcomeMessage': 'Welcome to JobsNavi',
      'signUpScreenRoleHintText':
      'Choose your position as talent or recruiter and register. Don\'t forget to fill in your profile so we can find the right jobs for you',
      'signUpScreenWhichRoleQuestion': 'How do you want to use JobsNavi?',
      'signUpScreenDropDownMenuTalentRole':
      'I am looking for new challenges! (talent)',
      'signUpScreenDropDownMenuRecruiterRole':
      'I am looking for talents! (recruiter)',
      'signUpScreenNextButton': 'Next',
      'signUpScreenBackButton': 'I already have an account!',
      'signUpFailedError': 'Registration failed',
      'signUpTooManyAttempsError':
      'Oh, no! Our registration server is currently very busy. Please try again a little later.',
      'signUpAsRecruiterEditError':
      'Oops, something went completely wrong. Please try again later.',
      'signUpEmailIsAlreadyUsedErrorTitle':
      'Ups, this e-mail address already exist!',
      'signUpEmailIsAlreadyUsedErrorMessage': 'Please check your data again.',
      'signUpUnknownErrorMessage':
      'Registration failed! Please try again later.',
      'signUpEmailEmptyError': 'Please enter your email address.',
      'signUpEmailInvalidError': 'Please enter a valid email address.',
      'signUpPasswordTooShortError':
      'The password should be at least 9 characters long.',
      'signUpPasswordEmptyError': 'Please enter your password.',
      'signUpAsRecruiterFormLabel': 'Registration as Recruiter',
      'signUpAsRecruiterCompanyHintText':
      'Enter your company code. If you do not have it, please contact the administrator of your company.' +
          ' You do not have an account yet? Then you can create one here.',
      'signUpAsRecruiterCompanyCodeTextBox': 'Company code',
      'signUpAsRecruiterCompanyNotFoundError':
      'We couldn\'t find that company.',
      'signUpAsRecruiterCreateCompanyCTA': 'Create company',
      'signUpAsRecruiteroptionDividerOr': 'or',
      'signUpAsRecruiterCompanySectionTitle': 'company',
      'signUpAsRecruiterPersonalInfoSectionTitle': 'Personal information',
      'signUpAsRecruiterFirstNameLabel': 'First name',
      'signUpAsRecruiterLastNameLabel': 'Last name',
      'signUpAsRecruiterPositionLabel': 'Position',
      'signUpAsRecruiterWelcomeMessageLabel': 'Welcome message',
      'signUpAsRecruiterWelcomeMessageHintText':
      'Enter a short message here, which should be sent as welcome message to suitable talents.',
      'signUpAsRecruiterPositionHintText': 'Your position in the company',
      'signUpAsRecruiterContactSectionTitle': 'Contact',
      'signUpAsRecruiterAccountSectionTitle': 'Account',
      'signUpAsRecruiterEditCTA': 'Edit profile',
      'signUpAsRecruiterPhoneLabel': 'Phone',
      'signUpAsRecruiterEmailLabel': 'Email address',
      'signUpAsRecruiterPasswordLabel': 'Password',
      'signUpAsRecruiterPrivacyPolicyCheckboxLabel':
      'Yes, I have read, understood and agree to the terms of use and data protection ' +
          'regulations of app-concept.com GmbH. For registration you must agree to our' +
          ' terms of use and data protection',
      'signUpAsRecruiterOpenPrivacyPolicyButtonLabel': 'Read now!',
      'signUpAsRecruiterRegisterCTA': 'Complete registration',
      'createcompanyCreateCTA': 'Create company',
      'createcompanyNoLogo': 'No logo',
      'createcompanyUploadLogoCTA': 'Upload Logo',
      'createcompanyFirmField': 'Company name',
      'createCompanyAppBarTitle': 'Create company',
      'createcompanyEmptyNameError': 'Please fill in the company name',
      'signUpAsTalentFormLabel': 'Registration as Talent',
      'signUpAsTalentFirstNameLabel': 'First name',
      'signUpAsTalentLastNameLabel': 'Last name',
      'signUpAsTalentUserNameLabel': 'Username',
      'signUpAsTalentAdressSectionTitle': 'Address',
      'signUpAsTalentZipCodeFieldLabel': 'Zip Code',
      'signUpAsTalentStreetFieldLabel': 'Street, no.',
      'signUpAsTalentCityFieldLabel': 'City',
      'signUpAsTalentEmailFieldLabel': 'Email address',
      'signUpAsTalentPasswordLabel': 'Password',
      'signUpAsTalentPrivacyPolicyCheckboxLabel':
      'Yes, I have read, understood and agree to the terms of use and data ' +
          'protection regulations of app-concept.com GmbH. ' +
          'For registration you must agree to our terms of use and data protection.',
      'signUpAsTalentOpenPrivacyPolicyButtonLabel': 'Read now!',
      'signUpAsTalentRegisterButtonLabel': 'Complete registration',
      'signUpAsTalentEditError':
      'Oops, something went completely wrong. Please try again later.',
      'signUpAsTalentAwareOfQuestion': 'How did you hear about JobsNavi?',
      'signUpAsTalentAwareOfFacebook': 'Facebook',
      'signUpAsTalentAwareOfInstagram': 'Instagram',
      'signUpAsTalentAwareOfRadio': 'Radio',
      'signUpAsTalentAwareOfRecommendation': 'Recommendation',
      'signUpAsTalentAwareOfFlyer': 'Flyer',
      'signUpAsTalentAwareOfRecommendationByJobsNavi': 'Contact with JobsNavi',
      'signUpAsTalentAwareOfOther': 'Other',
      'signUpAsTalentAwareOfHinttext': '--- please choose ---',
      'talentMapButtonLabel': 'Map',
      'talentMatchesButtonLabel': 'Matches',
      'talentChatsButtonLabel': 'Chats',
      'talentProfileButtonLabel': 'Profile',
      'talentJobMapFormLabel': 'Job map',
      'talentMatchesFormLabel': 'Matches',
      'talentMatchesStatusLabelAcceptedLabel': 'interested',
      'talentMatchesStatusLabelSeenLabel': 'seen',
      'talentMatchesStatusLabelUnseenLabel': 'unseen',
      'talentMatchesStatusLabelDeclined': 'declined',
      'talentMatchesStatusLabelMatch': 'Match!',
      'talentMatchesDistanceUnknown': 'unknown',
      'talentMatchesEmptyContent':
      'Complete your profile to become relevant to recruiters in your area.' +
          ' As soon as a matching job is found, you will find it here.',
      'talentJobAdDetailMatchAcceptedLabel': 'You are interested!',
      'talentJobAdDetailMatchDeclinedLabel': 'You are not interested!',
      'talentJobAdDetailAcceptButtonLabel': 'Accept',
      'talentJobAdDetailHardskillLabel': 'Hard skills:',
      'talentJobAdDetailNoHardskillsSelectedLabel': 'no hard skills',
      'talentJobAdDetailYearsOfExperienceLabel':
      'Years of experience: at least ',
      'talentJobAdDetailSalaryExceptionLabel': 'Salary Range: ',
      'talentJobAdDetailLookingForTrainee': 'looking for trainees',
      'talentJobAdDetailLookingForStudent': 'looking for students',
      'talentChatsFormLabel': 'Chats',
      'talentChatsInfoIfChatsEmpty':
      'As soon as you have a match, a new chat room will be opened automatically.',
      'talentProfileFormLabel': 'Profile',
      'talentProfileUseRealNameLabel': 'Use real name',
      'talentProfileUsreRealNameDescription':
      'Activate this function to show your real name to all companies that match you',
      'talentProfileShowPictureLabel': 'Show profile picture',
      'talentProfileShowPictureDescriptionLabel':
      'Activate this feature to show your profile picture in all matches and conversations',
      'talentProfileChooseJobDescriptionLabel': '- please select -',
      'talentProfileJobEmptyLabel': 'no information',
      'talentProfileYearsOfExperienceLabel': 'Years of experience: ',
      'talentProfileSalaryExceptionLabel': 'Salary expectation: ',
      'talentProfileSearchRadiusLabel': 'Search radius:',
      'talentProfileHardskillsLabel': 'Hard skills:',
      'talentProfileSoftskillsLabel': 'Soft skills',
      'logoutButtonLabel': 'Log out',
      'readPrivacyPolicyButtonLabel': 'Privacy Policy',
      'talentProfileFloatinButtonAddStudyLabel': 'Add study',
      'talentProfileFloatingButtonAddApprenticeshipLabel': 'Add apprenticeship',
      'talentProfileStudyInProgress': 'currently enrolled',
      'talentProfileApprenticeshipInProgress': 'currently in training',
      'talentSoftskillFormLabel': 'Softskills',
      'talentSoftskillsTooLittleSelectedError':
      'Error! Unfortunately, softskills are still missing at this point in order to save them. Enter at least 3!',
      'talentSoftskillFormSliderDescription':
      'Use the sliders to select at least 3 soft skills that describe you best. You can add or delete soft skills at any time.\nTIP: Be honest! This will help you find the perfect job. No one but you can see your soft skills.',
      'talentSoftskillSavedPopupFormLabel': 'Soft skills saved',
      'talentSoftskillSavedPopupCloseButton': 'Okay',
      'talentProfilePopupEditPictureLabel': 'Profile picture',
      'talentProfilePopupEditPictureNoPictureLabel': 'no image',
      'talentProfilePopupEditPictureChangePictureLabel':
      'Change profile picture',
      'talentProfilePopupEditAdressLabel': 'Change address',
      'talentProfilePopupEditExperienceIsEmptyLabel': 'no expertise',
      'talentProfilePopupEditSalaryLabel': 'Salary expectations',
      'talentProfilePopupEditSalaryFieldHinttext': 'desired salary',
      'talentProfilePopupSearchRadiusLabel': 'Search radius: ',
      'talentProfilePopupSearchRadiusFieldHinttext': 'Search radius in km',
      'talentProfilePopupSearchRadiusWillingtoMoveLabel': 'Willing to move',
      'talentProfilePopupSearchRadiusNotWillingtoMoveLabel':
      'Not willing to move',
      'talentProfilePopupSearchRadiusPreferRemoteLabel': 'Remote preferred',
      'talentProfileEditJobFormLabel': 'Job title',
      'talentProfileEditTextboxLabel': 'Choose profession',
      'talentProfileChooseJobHinttext': '- please select -',
      'talentProfilePopupHardskillsLabel': 'Hard skills',
      'hardskillPickerFieldHinttext': 'add hard skill',
      'popupAddStudyFormLabel': 'Add study',
      'popupAddStudyMajorFieldLabel': 'field of study',
      'popupAddStudyYearOfGraduationLabel': 'Year of graduation',
      'popupAddStudyIsEnrolledLabel': 'I\'m a student now.',
      'popupAddStudyDegreeWithout': 'without graduation',
      'popupAddStudyDegreeBachelor': 'Bachelor',
      'popupAddStudyDegreePhD': 'PhD / Doctor',
      'popupAddStudyDegreeMaster': 'Master / Diploma',
      'popupAddStudyAddButtonLabel': 'Add',
      'popupAddStudyLookingForStudentCheckboxLabel':
      'I\'m looking for students.',
      'popupAddApprenticeshipLabel': 'Add apprenticeship',
      'popupAddApprenticeshipProfession': 'Apprenticeship profession',
      'popupAddApprenticeshipNoProfessionFound': 'No results.',
      'popupAddApprenticeshipQualification': 'Qualification / Degree',
      'popupAddApprenticeshipYearOfGraduation': 'Year of graduation',
      'popupAddApprenticeshipAddButton': 'Add',
      'popupAddApprenticeshipOnGoing': 'I\'m in training right now.',
      'popupAddApprenticeshipLookingforTraineeCheckboxLabel':
      'I\'m looking for trainees.',
      'recruiterRadarButtonLabel': 'Radar',
      'recruiterJobAdsButtonLabel': 'Job ads',
      'recruiterChatsButtonLabel': 'Chats',
      'recruiterProfileButtonLabel': 'Profile',
      'recruiterRadarFormLabel': 'Radar',
      'recruiterRadarSortMenuScoreLabel': 'Score',
      'recruiterRadarSortMenuDistanceLabel': 'Distance',
      'recruiterRadarTalentDistanceNearLabel': 'near',
      'recruiterRadarJobAdPrefix': 'Job ad: ',
      'recruiterRadarEmptyText':
      'As soon as you have a match, a new chat room will be opened automatically.',
      'recruiterRadarDistanceUnknownLabel': 'unknown',
      'recruiterRadarDeclinedMatchesLabel': 'Declined matches',
      'recruiterRadarTalentHardskillLabel': 'Hard skills',
      'recruiterRadarTalentNoHardskillsSelectedLabel': 'no hard skills',
      'recruiterRadarTalentYearsOfExperienceLabel': 'Years of experience',
      'recruiterRadarTalentSalaryExceptionLabel': 'Salary range',
      'recruiterRadarTalentMatchAcceptedLabel': 'You are interested!',
      'recruiterRadarTalentMatchDeclinedLabel': 'You are not interested!',
      'recruiterRadarTalentAcceptButtonLabel': 'Accept',
      'recruiterRadarTalentDeclineButtonLabel': 'not interested',
      'recruiterChatsFormLabel': 'Chats',
      'recruiterChatsInfoIfChatsEmpty':
      'As soon as you have a match, a new chat room will be opened automatically.',
      'recruiterJobAdsFormLabel': 'Own job ads',
      'recruiterJobAdsAmountOfMatchesLabel': 'Matches',
      'recruiterJobAdsEmptyInfo':
      'You have not yet placed any job advertisements. Why don\'t you start now?',
      'recruiterJobAdIsUnpublishedLabel': 'unpublished',
      'recruiterJobAdIsPublishedLabel': 'published',
      'recruiterJobadUnpublishQuestion':
      'Are you sure you want to disable the job ad?',
      'recruiterJobadPublishDialog':
      'Please contact JobsNavi if you want to publish a job ad again.',
      'recruiterJobadUnpublishDialog':
      'Please contact JobsNavi if you want to unpublish a job ad.',
      'createJobAdFormLabel': 'New job ad',
      'createJobAdTitleGeneral': 'General',
      'createJobAdTitleTextboxLabel': 'Title',
      'createJobAdDescriptionTextboxLabel': 'Description',
      'createJobAdFailedTitle': 'Unable to create job ad.',
      'createJobAdFailedContent':
      'Something went wrong while submitting the job ad. You can try again later or reset it.',
      'createJobAdFailedOptionReset': 'Retry',
      'createJobAdFailedOptionTryAgain': 'Try again',
      'createJobAdButtonPrevious': 'Previous',
      'createJobAdButtonNext': 'Next',
      'createJobAdButtonCreate': 'Pay & Activate',
      'editJobAdButtonEdit': 'Save',
      'createJobAdJobTextboxLabel': 'Choose profession',
      'createJobAdYearsOfExperienceTextboxLabel': 'Years of experience',
      'createJobAdSalarayExceptionScetionLabel': 'Salary range',
      'createJobAdTitleJobDescription': 'Job description',
      'createJobAdFreelanceType': 'As freelancer',
      'createJobAdRemoteWorkPossible': 'Remote work possible',
      'createJobAdHardskillsLabel': 'Hard skills',
      'createJobAdHardskillsHelp':
      'Specify the typical job qualifications of the employee you are looking for. TIP: Do not describe the tasks, but the skills needed to perform the tasks.',
      'createJobAdHardskillsLabelError': 'Please choose one',
      'createJobAdHardskillsTextBoxLabel': 'Add hard skill',
      'createJobAdSoftskillsLabel': 'Soft skills',
      'createJobAdSoftskillsSelectedLabel': 'soft skills selected',
      'recruiteraddApprenticeshipNoProfessionFoundText': 'No results.',
      'recruiteraddStudyNoMajorsFoundText': 'No results.',
      'createJobAdApprenticeshipLabel': 'Apprenticeship:',
      'createJobAdApprenticeshipNoItems': '- no details -',
      'createJobadLookingforEnrolledStudents': 'search for students',
      'createJobadLookingfortrainee': 'search for trainees',
      'editjobAdFloatingButtonAddStudyLabel': 'Add study',
      'editJobAdFloatingButtonAddApprenticeshipLabel': 'Add apprenticeship',
      'createJobAdTitleAdjustments': 'Adjustments',
      'createJobAdScoreAdcustmentsSectionTitle': 'Score adjustments:',
      'createJobAdMatchScoreSliderLabel': 'Match-score:',
      'createJobAdHardskillScoreSliderLabel': 'Hard skills',
      'createJobAdSoftskillScoreSliderLabel': 'Soft skills',
      'createJobAdSalaryScoreSliderLabel': 'Salary',
      'createJobAdDistanceScoreSliderLabel': 'Distance',
      'createJobAdDegreeScoreSliderLabel': 'Degrees',
      'createJobAdScoreInfoTitle': 'Info: Score',
      'createJobAdScoreInfoText1': 'The ',
      'createJobAdScoreInfoText2': 'match score',
      'createJobAdScoreInfoText3':
      'determines which talents are displayed to you. Each attribute is checked ' +
          'and evaluated according to your requirements. If the applicant reaches ' +
          'at least your minimum score, it will be shown to you as a potential match.' +
          ' You can also determine which ',
      'createJobAdScoreInfoText4': 'rating category ',
      'createJobAdScoreInfoText5':
      'is most important to you by adjusting the sliders based on your preferences.',
      'createJobAdScoreInfoCloseButton': 'Thanks!',
      'jobAdDetailSoftskillsLabel': 'Soft skills',
      'jobAdDetailSoftskillsSelectedLabel': 'Soft skills selected.',
      'recruiterProfileFormLabel': 'Profile',
      'recruiterProfileCompanySectionTitle': 'Company',
      'recruiterProfileContactSectionTitle': 'Contact',
      'recruiterProfileWelcomeMessageTitle': 'Welcome message',
      'recruiterProfilePositionEmptyLabel': 'no information',
      'recruiterEditProfileInfoSectionTitle': 'Personal information',
      'recruiterEditProfileFirstNameLabel': 'First name',
      'recruiterEditProfileLastNameLabel': 'Last name',
      'recruiterEditProfilePositionLabel': 'Position',
      'recruiterEditProfileWelcomeMessageLabel': 'Welcome message',
      'recruiterEditProfileWelcomeMessageHintText':
      'Enter a short message here, which should be sent as welcome message to matching talents.',
      'recruiterEditProfilePositionHintText': 'Your position in the company',
      'recruiterEditProfileSaveButtonLabel': 'Done',
      'recruiterEditProfilePhoneLabel': 'Phone',
      'publicationPriceTitle': 'Publication price',
      'publicationPriceInformation': (int days) =>
      'Your job ad will be published for $days days. You will be invoiced after creating this job ad.',
      'publicationPriceOrderLineFeeDescription': (double percentage) =>
      '${NumberFormat.decimalPattern("en").format(percentage)}% of maximum salary',
      'publicationPriceOrderLineFee': 'Fee',
      'publicationPriceOrderLineDiscount': 'Discount',
      'publicationPriceOrderLinePrecentageDiscountDescription': (String code,
          double percentage) =>
      '${code.toUpperCase()} ${NumberFormat.decimalPattern("en").format(percentage)}%',
      'publicationPriceOrderLineFixedPriceDiscountDescription': (String code,
          double fixedPrice) =>
      '${code.toUpperCase()}: Only ${NumberFormat.currency(locale: "en", symbol: '€').format(fixedPrice)}',
      'publicationPriceOrderLineSubtotal': 'Subtotal',
      'publicationPriceOrderLineTax': 'Tax',
      'publicationPriceOrderLineTaxDescription': (double percentage) =>
      '${NumberFormat.decimalPattern("en").format(percentage)}%',
      'publicationPriceOrderLineTotal': 'Total',
      'publicationCouponCodeTitle': 'Add coupon code',
      'publicationCouponCodeApplied': (String code) => 'Coupon applied: $code',
      'generalCurrencyEuro': (double amount) =>
          NumberFormat.currency(locale: "en", symbol: '€').format(amount),
      // Push notifications
      'notificationOpenChatAction': 'Open chat',
      'notificationOpenChatCancelAction': 'Maybe later',
      'notificationGenericOkAction': 'Ok',
      'notificationOpenChatQuestion': 'Do you want to open it?',
      'notificationOpenChatError': 'Oops, this chat is not longer available',
      // Industry Sectors
      'industryTitle': 'Industry',
      'industryNotSelected': 'Industry not selected',
      'industryRecruiterExplanation':
      'Please choose your industry to match talents from within your sector. A matching sector will increase the match score.',
      'firstStepIndustryTitle': 'Industry',
      'secondStepIndustryTitle': 'Sector',
      'thirdStepIndustryTitle': 'Branch',
      'industryCloseButton': 'Close',
      'industrySelectHint': '- please select -',
      'industryTalentExplanation':
      'Please choose your industry to match jobs from within your sector. A matching sector will increase the match score.',
      // Salary
      'salaryHourly': 'per hour',
      'salaryMonthly': 'per month',
      'salaryYearly': 'per year',
      //Forgot password
      'forgotPasswordButton': 'Forgot password',
      'okButton': 'Ok',
      'recoverPasswordButton': 'Recover password',
      'backToLoginButton': 'Back to login',
      'recoverPasswordResultMessage':
      'We’ve sent you an email to recover your password.',
      'recoverPasswordResultMessageFail': 'This email address does not exist.',
      'recoverPasswordDialog':
      'An email will be sent to you with the steps to recover your password.',
      //Pending email verification
      'sendAgainButton': 'Send again',
      'verifyYourAccountTitle': 'Verify your account',
      'verifyYourAccountMessage': "We've sent an email to verify your account.",
      'sendVerificationEmailConfirmation':
      "We've sent an email to verify your account.",
      'sendVerificationEmailConfirmationError':
      "We've sent you recently an email. If you didn't receive it contact with us.",
      'signUpMandatoryFieldError': 'Mandatory field',
      //Coupon errors
      'priceHigherWithCoupon':
      "Coupon not applied. Price with the coupon is higher than current price.",
      'couponNotLongerAvailable': "This coupon is not longer available.",
      'couponNotAvailableYet': "This coupon is not available yet.",
      'couponNotFound': "Coupon not found.",
      //Settings
      'settingsAppBarTitle': "Settings",
      'loginWithBiometrics': "Login with biometrics",
      'loginWithBiometricsSubtitle':
      "Everytime you open the app you will need to login with biometrics",
      'noBiometricsAvailbleErrorMessage':
      "No biometrics available. Please go to your settings",
      'biometricsRequest': "Please authenticate to login",
      'biometricsButton': "Access with FaceId or Fingerprint",
      'coronaJobad': "Corona-Helper job",
      'coronaHelperTitle': "Corona-Helper",
      'coronaJobDescription':
      "You might find talents that don't match with the job.",
      'coronaHelperDescription':
      "You might match with jobs that don't match with your profile.",
      'driverLicenseCreateJobad': "Driver license",
      'driverLicenseJobadDetails': "Driver license needed",
      'talentWithoutDriverLicense': "Driver license: no",
      'talentWithDriverLicense': "Driver license: yes",
      'talentProfileDriverLicense': "Driver license",
      'talentProfileSalaryExpectationDescription':
      'State the salary you expect in your new job. TIP: Be realistic!',
      'talentProfileHardskillsDescription':
      'Indicate your hardskills here. TIP: Do not only show your learned skills from your professional environment, but also include your hobbies or other skills',
      'talentChatHelpText':
      'No idea what to write in the chat? Check out this post:',
      'recruiterWelcomeMessageHelp':
      'The welcome message is automatically sent to each talent when there is a match through mutual interest. TIP: For inspiration, visit ',
      'recruiterJobAdLocationHelp':
      'Enter the exact work location of your advertised job here. If it is a mobile job, activate the Remote switch and enter the official company location here.',
      'recruiterSelectSoftSkills':
      'Use the sliders to select at least 3 soft skills that describe the future employee.\nTIP: Ask the future colleagues which soft skills are necessary.',
      'recruiterSelectSoftSkillsError':
      'Error! Unfortunately, soft skills are still missing at this point. Please enter at least 3 soft skills!',
      'talentHardSkillsInformation':
      'You need to select 3 to 10 hardskills to get matches',
      'talentMissingInformationAlertTitle': 'Your profile is not completed',
      'talentMissingInformationAlertMessage':
      'In order to reach more jobs it is important to fill the missing information',
      'jobadFilterTitle': 'Choose a job ad',
      'jobadFilterEmptyMessage': 'No job ads found',
      'talentProfileNotCompletedTitle': 'Your profile is not completed',
      'talentProfileNotCompletedMessage':
      'In order to reach more jobs it is important to fill the missing information',
      'coronaHelperHelpText': 'What is Corona-Helper? More info: ',
      'mapWaitingMessage': 'Searching for best jobs near you...'
    },

  };

  /// Helper function for getting label from [localizedValues]
  dynamic _l(String key) => localizedValues[locale.languageCode]?[key];
  String get exitAppWarningText => _l('exitAppWarningText');
  String get exitAppWarningOptionStay => _l('exitAppWarningOptionStay');
  String get exitAppWarningOptionExit => _l('exitAppWarningOptionExit');
  String get enforcedUpdateTitle => _l('enforcedUpdateTitle');
  String get enforcedUpdateMessage => _l('enforcedUpdateMessage');
  String get enforcedUpdateButtonLabel => _l('enforcedUpdateButtonLabel');
  String get timeCodeYear => _l('timeCodeYear');
  String get timeCodeYears => _l('timeCodeYears');
  String get saveButtonLabel => _l('saveButtonLabel');
  String get cancelButtonLabel => _l('cancelButtonLabel');
  String get confirmButtonlabel => _l('confirmButtonlabel');
  String get salaryRangePrefix => _l('salaryRangePrefix');
  String get salaryRangeSeperator => _l('salaryRangeSeperator');
  String get emailTextBoxEmptyError => _l('emailTextBoxEmptyError');
  String get chatRoomNewMessageTextBoxHinttext =>
      _l('chatRoomNewMessageTextBoxHinttext');
  String get chatRoomJobAdIsNotPublished => _l('chatRoomJobAdIsNotPublished');
  String get locationSelectorInvalidLocation =>
      _l('locationSelectorInvalidLocation');
  String get locationSelectorVerifyCTA => _l('locationSelectorVerifyCTA');
  String get locationSelectorAddressSectionTitle =>
      _l('locationSelectorAddressSectionTitle');
  String get locationSelectorStreetField => _l('locationSelectorStreetField');
  String get locationSelectorZipCodeField => _l('locationSelectorZipCodeField');
  String get locationSelectorCityField => _l('locationSelectorCityField');
  String get locationSelectorError => _l('locationSelectorError');
  String get distancAboutLabel => _l('distancAboutLabel');
  String get loginScreenEmailFieldLabel => _l('loginScreenEmailFieldLabel');
  String get loginScreenPasswordFieldLabel =>
      _l('loginScreenPasswordFieldLabel');
  String get loginScreenLoginButtonLabel => _l('loginScreenLoginButtonLabel');
  String get loginScreenSignUpButtonLabel => _l('loginScreenSignUpButtonLabel');
  String get loginScreenSignUpEmailEmptyError =>
      _l('loginScreenSignUpEmailEmptyError');
  String get loginScreenPasswordEmptyError =>
      _l('loginScreenPasswordEmptyError');
  String get loginScreenPasswordTooShortError =>
      _l('loginScreenPasswordTooShortError');
  String get loginScreenErrorPopupLabel => _l('loginScreenErrorPopupLabel');
  String get loginScreenErrorPopupText => _l('loginScreenErrorPopupText');
  String get loginScreenErrorPopupEmailNotFoundText =>
      _l('loginScreenErrorPopupEmailNotFoundText');
  String get loginScreenErrorPopupInvalidPassword =>
      _l('loginScreenErrorPopupInvalidPassword');
  String get loginScreenErrorPopupUserDisabledText =>
      _l('loginScreenErrorPopupUserDisabledText');
  String get loginScreenErrorPopupDefaultText =>
      _l('loginScreenErrorPopupDefaultText');
  String get signUpFormLabel => _l('signUpFormLabel');
  String get signUpScreenWelcomeMessage => _l('signUpScreenWelcomeMessage');
  String get signUpScreenRoleHintText => _l('signUpScreenRoleHintText');
  String get signUpScreenWhichRoleQuestion =>
      _l('signUpScreenWhichRoleQuestion');
  String get signUpScreenDropDownMenuTalentRole =>
      _l('signUpScreenDropDownMenuTalentRole');
  String get signUpScreenDropDownMenuRecruiterRole =>
      _l('signUpScreenDropDownMenuRecruiterRole');
  String get signUpScreenNextButton => _l('signUpScreenNextButton');
  String get signUpScreenBackButton => _l('signUpScreenBackButton');
  String get signUpFailedError => _l('signUpFailedError');
  String get signUpTooManyAttempsError => _l('signUpTooManyAttempsError');
  String get signUpAsRecruiterEditError => _l('signUpAsRecruiterEditError');
  String get signUpEmailIsAlreadyUsedErrorTitle =>
      _l('signUpEmailIsAlreadyUsedErrorTitle');
  String get signUpEmailIsAlreadyUsedErrorMessage =>
      _l('signUpEmailIsAlreadyUsedErrorMessage');
  String get signUpUnknownErrorMessage => _l('signUpUnknownErrorMessage');
  String get signUpAsRecruiterFormLabel => _l('signUpAsRecruiterFormLabel');
  String get signUpAsRecruiterCompanyHintText =>
      _l('signUpAsRecruiterCompanyHintText');
  String get signUpAsRecruiterCompanyCodeTextBox =>
      _l('signUpAsRecruiterCompanyCodeTextBox');
  String get signUpAsRecruiterCompanyNotFoundError =>
      _l('signUpAsRecruiterCompanyNotFoundError');
  String get signUpAsRecruiterCreateCompanyCTA =>
      _l('signUpAsRecruiterCreateCompanyCTA');
  String get signUpAsRecruiteroptionDividerOr =>
      _l('signUpAsRecruiteroptionDividerOr');
  String get signUpAsRecruiterCompanySectionTitle =>
      _l('signUpAsRecruiterCompanySectionTitle');
  String get signUpAsRecruiterPersonalInfoSectionTitle =>
      _l('signUpAsRecruiterPersonalInfoSectionTitle');
  String get signUpAsRecruiterFirstNameLabel =>
      _l('signUpAsRecruiterFirstNameLabel');
  String get signUpAsRecruiterLastNameLabel =>
      _l('signUpAsRecruiterLastNameLabel');
  String get signUpAsRecruiterPositionLabel =>
      _l('signUpAsRecruiterPositionLabel');
  String get signUpAsRecruiterWelcomeMessageLabel =>
      _l('signUpAsRecruiterWelcomeMessageLabel');
  String get signUpAsRecruiterWelcomeMessageHintText =>
      _l('signUpAsRecruiterWelcomeMessageHintText');
  String get signUpAsRecruiterPositionHintText =>
      _l('signUpAsRecruiterPositionHintText');
  String get signUpAsRecruiterContactSectionTitle =>
      _l('signUpAsRecruiterContactSectionTitle');
  String get signUpAsRecruiterAccountSectionTitle =>
      _l('signUpAsRecruiterAccountSectionTitle');
  String get signUpAsRecruiterEditCTA => _l('signUpAsRecruiterEditCTA');
  String get signUpAsRecruiterPhoneLabel => _l('signUpAsRecruiterPhoneLabel');
  String get signUpAsRecruiterEmailLabel => _l('signUpAsRecruiterEmailLabel');
  String get signUpAsRecruiterPasswordLabel =>
      _l('signUpAsRecruiterPasswordLabel');
  String get signUpAsRecruiterPrivacyPolicyCheckboxLabel =>
      _l('signUpAsRecruiterPrivacyPolicyCheckboxLabel');
  String get signUpAsRecruiterOpenPrivacyPolicyButtonLabel =>
      _l('signUpAsRecruiterOpenPrivacyPolicyButtonLabel');
  String get signUpAsRecruiterRegisterCTA => _l('signUpAsRecruiterRegisterCTA');
  String get createcompanyCreateCTA => _l('createcompanyCreateCTA');
  String get createcompanyNoLogo => _l('createcompanyNoLogo');
  String get createcompanyUploadLogoCTA => _l('createcompanyUploadLogoCTA');
  String get createcompanyFirmField => _l('createcompanyFirmField');
  String get createCompanyAppBarTitle => _l('createCompanyAppBarTitle');
  String get createcompanyEmptyNameError => _l('createcompanyEmptyNameError');
  String get signUpAsTalentFormLabel => _l('signUpAsTalentFormLabel');
  String get signUpAsTalentFirstNameLabel => _l('signUpAsTalentFirstNameLabel');
  String get signUpAsTalentLastNameLabel => _l('signUpAsTalentLastNameLabel');
  String get signUpAsTalentUserNameLabel => _l('signUpAsTalentUserNameLabel');
  String get signUpAsTalentAdressSectionTitle =>
      _l('signUpAsTalentAdressSectionTitle');
  String get signUpAsTalentZipCodeFieldLabel =>
      _l('signUpAsTalentZipCodeFieldLabel');
  String get signUpAsTalentStreetFieldLabel =>
      _l('signUpAsTalentStreetFieldLabel');
  String get signUpAsTalentCityFieldLabel => _l('signUpAsTalentCityFieldLabel');
  String get signUpAsTalentEmailFieldLabel =>
      _l('signUpAsTalentEmailFieldLabel');
  String get signUpAsTalentPasswordLabel => _l('signUpAsTalentPasswordLabel');
  String get signUpAsTalentPrivacyPolicyCheckboxLabel =>
      _l('signUpAsTalentPrivacyPolicyCheckboxLabel');
  String get signUpAsTalentOpenPrivacyPolicyButtonLabel =>
      _l('signUpAsTalentOpenPrivacyPolicyButtonLabel');
  String get signUpAsTalentRegisterButtonLabel =>
      _l('signUpAsTalentRegisterButtonLabel');
  String get signUpAsTalentEditError => _l('signUpAsTalentEditError');
  String get signUpEmailEmptyError => _l('signUpEmailEmptyError');
  String get signUpEmailInvalidError => _l('signUpEmailInvalidError');
  String get signUpPasswordEmptyError => _l('signUpPasswordEmptyError');
  String get signUpPasswordTooShortError => _l('signUpPasswordTooShortError');
  String get signUpAsTalentAwareOfQuestion =>
      _l('signUpAsTalentAwareOfQuestion');
  String get signUpAsTalentAwareOfFacebook =>
      _l('signUpAsTalentAwareOfFacebook');
  String get signUpAsTalentAwareOfInstagram =>
      _l('signUpAsTalentAwareOfInstagram');
  String get signUpAsTalentAwareOfRadio => _l('signUpAsTalentAwareOfRadio');
  String get signUpAsTalentAwareOfRecommendation =>
      _l('signUpAsTalentAwareOfRecommendation');
  String get signUpAsTalentAwareOfFlyer => _l('signUpAsTalentAwareOfFlyer');
  String get signUpAsTalentAwareOfRecommendationByJobsNavi =>
      _l('signUpAsTalentAwareOfRecommendationByJobsNavi');
  String get signUpAsTalentAwareOfOther => _l('signUpAsTalentAwareOfOther');
  String get signUpAsTalentAwareOfHinttext =>
      _l('signUpAsTalentAwareOfHinttext');
  String get talentMapButtonLabel => _l('talentMapButtonLabel');
  String get talentMatchesButtonLabel => _l('talentMatchesButtonLabel');
  String get talentChatsButtonLabel => _l('talentChatsButtonLabel');
  String get talentProfileButtonLabel => _l('talentProfileButtonLabel');
  String get talentJobMapFormLabel => _l('talentJobMapFormLabel');
  String get talentMatchesFormLabel => _l('talentMatchesFormLabel');
  String get talentMatchesStatusLabelAcceptedLabel =>
      _l('talentMatchesStatusLabelAcceptedLabel');
  String get talentMatchesStatusLabelSeenLabel =>
      _l('talentMatchesStatusLabelSeenLabel');
  String get talentMatchesStatusLabelUnseenLabel =>
      _l('talentMatchesStatusLabelUnseenLabel');
  String get talentMatchesStatusLabelDeclined =>
      _l('talentMatchesStatusLabelDeclined');
  String get talentMatchesStatusLabelMatch =>
      _l('talentMatchesStatusLabelMatch');
  String get talentMatchesDistanceUnknown => _l('talentMatchesDistanceUnknown');
  String get talentMatchesEmptyContent => _l('talentMatchesEmptyContent');
  String get talentJobAdDetailMatchAcceptedLabel =>
      _l('talentJobAdDetailMatchAcceptedLabel');
  String get talentJobAdDetailMatchDeclinedLabel =>
      _l('talentJobAdDetailMatchDeclinedLabel');
  String get talentJobAdDetailAcceptButtonLabel =>
      _l('talentJobAdDetailAcceptButtonLabel');
  String get talentJobAdDetailHardskillLabel =>
      _l('talentJobAdDetailHardskillLabel');
  String get talentJobAdDetailNoHardskillsSelectedLabel =>
      _l('talentJobAdDetailNoHardskillsSelectedLabel');
  String get talentJobAdDetailYearsOfExperienceLabel =>
      _l('talentJobAdDetailYearsOfExperienceLabel');
  String get talentJobAdDetailSalaryExceptionLabel =>
      _l('talentJobAdDetailSalaryExceptionLabel');
  String get talentJobAdDetailLookingForTrainee =>
      _l('talentJobAdDetailLookingForTrainee');
  String get talentJobAdDetailLookingForStudent =>
      _l('talentJobAdDetailLookingForStudent');
  String get talentChatsFormLabel => _l('talentChatsFormLabel');
  String get talentChatsInfoIfChatsEmpty => _l('talentChatsInfoIfChatsEmpty');
  String get talentProfileFormLabel => _l('talentProfileFormLabel');
  String get talentProfileUseRealNameLabel =>
      _l('talentProfileUseRealNameLabel');
  String get talentProfileUsreRealNameDescription =>
      _l('talentProfileUsreRealNameDescription');
  String get talentProfileShowPictureLabel =>
      _l('talentProfileShowPictureLabel');
  String get talentProfileShowPictureDescriptionLabel =>
      _l('talentProfileShowPictureDescriptionLabel');
  String get talentProfileChooseJobDescriptionLabel =>
      _l('talentProfileChooseJobDescriptionLabel');
  String get talentProfileJobEmptyLabel => _l('talentProfileJobEmptyLabel');
  String get talentProfileYearsOfExperienceLabel =>
      _l('talentProfileYearsOfExperienceLabel');
  String get talentProfileSalaryExceptionLabel =>
      _l('talentProfileSalaryExceptionLabel');
  String get talentProfileSearchRadiusLabel =>
      _l('talentProfileSearchRadiusLabel');
  String get talentProfileHardskillsLabel => _l('talentProfileHardskillsLabel');
  String get talentProfileSoftskillsLabel => _l('talentProfileSoftskillsLabel');
  String get logoutButtonLabel => _l('logoutButtonLabel');
  String get readPrivacyPolicyButtonLabel => _l('readPrivacyPolicyButtonLabel');
  String get talentProfileFloatinButtonAddStudyLabel =>
      _l('talentProfileFloatinButtonAddStudyLabel');
  String get talentProfileFloatingButtonAddApprenticeshipLabel =>
      _l('talentProfileFloatingButtonAddApprenticeshipLabel');
  String get talentProfileStudyInProgress => _l('talentProfileStudyInProgress');
  String get talentProfileApprenticeshipInProgress =>
      _l('talentProfileApprenticeshipInProgress');
  String get talentSoftskillFormLabel => _l('talentSoftskillFormLabel');
  String get talentSoftskillFormSliderDescription =>
      _l('talentSoftskillFormSliderDescription');
  String get talentSoftskillSavedPopupFormLabel =>
      _l('talentSoftskillSavedPopupFormLabel');
  String get talentSoftskillSavedPopupCloseButton =>
      _l('talentSoftskillSavedPopupCloseButton');
  String get talentProfilePopupEditPictureLabel =>
      _l('talentProfilePopupEditPictureLabel');
  String get talentProfilePopupEditPictureNoPictureLabel =>
      _l('talentProfilePopupEditPictureNoPictureLabel');
  String get talentProfilePopupEditPictureChangePictureLabel =>
      _l('talentProfilePopupEditPictureChangePictureLabel');
  String get talentProfilePopupEditAdressLabel =>
      _l('talentProfilePopupEditAdressLabel');
  String get talentProfilePopupEditExperienceIsEmptyLabel =>
      _l('talentProfilePopupEditExperienceIsEmptyLabel');
  String get talentProfilePopupEditSalaryLabel =>
      _l('talentProfilePopupEditSalaryLabel');
  String get talentProfilePopupEditSalaryFieldHinttext =>
      _l('talentProfilePopupEditSalaryFieldHinttext');
  String get talentProfilePopupSearchRadiusLabel =>
      _l('talentProfilePopupSearchRadiusLabel');
  String get talentProfilePopupSearchRadiusFieldHinttext =>
      _l('talentProfilePopupSearchRadiusFieldHinttext');
  String get talentProfilePopupSearchRadiusWillingtoMoveLabel =>
      _l('talentProfilePopupSearchRadiusWillingtoMoveLabel');
  String get talentProfilePopupSearchRadiusNotWillingtoMoveLabel =>
      _l('talentProfilePopupSearchRadiusNotWillingtoMoveLabel');
  String get talentProfilePopupSearchRadiusPreferRemoteLabel =>
      _l('talentProfilePopupSearchRadiusPreferRemoteLabel');
  String get talentProfileEditJobFormLabel =>
      _l('talentProfileEditJobFormLabel');
  String get talentProfileEditTextboxLabel =>
      _l('talentProfileEditTextboxLabel');
  String get talentProfileChooseJobHinttext =>
      _l('talentProfileChooseJobHinttext');
  String get talentProfilePopupHardskillsLabel =>
      _l('talentProfilePopupHardskillsLabel');
  String get hardskillPickerFieldHinttext => _l('hardskillPickerFieldHinttext');
  String get popupAddStudyFormLabel => _l('popupAddStudyFormLabel');
  String get popupAddStudyMajorFieldLabel => _l('popupAddStudyMajorFieldLabel');
  String get popupAddStudyYearOfGraduationLabel =>
      _l('popupAddStudyYearOfGraduationLabel');
  String get popupAddStudyIsEnrolledLabel => _l('popupAddStudyIsEnrolledLabel');
  String get popupAddStudyDegreeWithout => _l('popupAddStudyDegreeWithout');
  String get popupAddStudyDegreeBachelor => _l('popupAddStudyDegreeBachelor');
  String get popupAddStudyDegreePhD => _l('popupAddStudyDegreePhD');
  String get popupAddStudyDegreeMaster => _l('popupAddStudyDegreeMaster');
  String get popupAddStudyAddButtonLabel => _l('popupAddStudyAddButtonLabel');
  String get popupAddStudyLookingForStudentCheckboxLabel =>
      _l('popupAddStudyLookingForStudentCheckboxLabel');
  String get popupAddApprenticeshipLabel => _l('popupAddApprenticeshipLabel');
  String get popupAddApprenticeshipProfession =>
      _l('popupAddApprenticeshipProfession');
  String get popupAddApprenticeshipNoProfessionFound =>
      _l('popupAddApprenticeshipNoProfessionFound');
  String get popupAddApprenticeshipQualification =>
      _l('popupAddApprenticeshipQualification');
  String get popupAddApprenticeshipYearOfGraduation =>
      _l('popupAddApprenticeshipYearOfGraduation');
  String get popupAddApprenticeshipAddButton =>
      _l('popupAddApprenticeshipAddButton');
  String get popupAddApprenticeshipOnGoing =>
      _l('popupAddApprenticeshipOnGoing');
  String get popupAddApprenticeshipLookingforTraineeCheckboxLabel =>
      _l('popupAddApprenticeshipLookingforTraineeCheckboxLabel');
  String get recruiterRadarButtonLabel => _l('recruiterRadarButtonLabel');
  String get recruiterJobAdsButtonLabel => _l('recruiterJobAdsButtonLabel');
  String get recruiterChatsButtonLabel => _l('recruiterChatsButtonLabel');
  String get recruiterProfileButtonLabel => _l('recruiterProfileButtonLabel');
  String get recruiterRadarFormLabel => _l('recruiterRadarFormLabel');
  String get recruiterRadarSortMenuScoreLabel =>
      _l('recruiterRadarSortMenuScoreLabel');
  String get recruiterRadarSortMenuDistanceLabel =>
      _l('recruiterRadarSortMenuDistanceLabel');
  String get recruiterRadarTalentDistanceNearLabel =>
      _l('recruiterRadarTalentDistanceNearLabel');
  String get recruiterRadarJobAdPrefix => _l('recruiterRadarJobAdPrefix');
  String get recruiterRadarEmptyText => _l('recruiterRadarEmptyText');
  String get recruiterRadarDistanceUnknownLabel =>
      _l('recruiterRadarDistanceUnknownLabel');
  String get recruiterRadarDeclinedMatchesLabel =>
      _l('recruiterRadarDeclinedMatchesLabel');
  String get recruiterRadarTalentHardskillLabel =>
      _l('recruiterRadarTalentHardskillLabel');
  String get recruiterRadarTalentNoHardskillsSelectedLabel =>
      _l('recruiterRadarTalentNoHardskillsSelectedLabel');
  String get recruiterRadarTalentYearsOfExperienceLabel =>
      _l('recruiterRadarTalentYearsOfExperienceLabel');
  String get recruiterRadarTalentSalaryExceptionLabel =>
      _l('recruiterRadarTalentSalaryExceptionLabel');
  String get recruiterChatsFormLabel => _l('recruiterChatsFormLabel');
  String get recruiterRadarTalentMatchAcceptedLabel =>
      _l('recruiterRadarTalentMatchAcceptedLabel');
  String get recruiterRadarTalentMatchDeclinedLabel =>
      _l('recruiterRadarTalentMatchDeclinedLabel');
  String get recruiterRadarTalentAcceptButtonLabel =>
      _l('recruiterRadarTalentAcceptButtonLabel');
  String get recruiterRadarTalentDeclineButtonLabel =>
      _l('recruiterRadarTalentDeclineButtonLabel');
  String get recruiterChatsInfoIfChatsEmpty =>
      _l('recruiterChatsInfoIfChatsEmpty');
  String get recruiterJobAdsFormLabel => _l('recruiterJobAdsFormLabel');
  String get recruiterJobAdsAmountOfMatchesLabel =>
      _l('recruiterJobAdsAmountOfMatchesLabel');
  String get recruiterJobAdsEmptyInfo => _l('recruiterJobAdsEmptyInfo');
  String get recruiterJobAdIsUnpublishedLabel =>
      _l('recruiterJobAdIsUnpublishedLabel');
  String get recruiterJobAdIsPublishedLabel =>
      _l('recruiterJobAdIsPublishedLabel');
  String get recruiterJobadUnpublishQuestion =>
      _l('recruiterJobadUnpublishQuestion');
  String get recruiterJobadPublishDialog => _l('recruiterJobadPublishDialog');
  String get recruiterJobadUnpublishDialog =>
      _l('recruiterJobadUnpublishDialog');
  String get createJobAdFormLabel => _l('createJobAdFormLabel');
  String get createJobAdTitleGeneral => _l('createJobAdTitleGeneral');
  String get createJobAdTitleTextboxLabel => _l('createJobAdTitleTextboxLabel');
  String get createJobAdDescriptionTextboxLabel =>
      _l('createJobAdDescriptionTextboxLabel');
  String get createJobAdFailedTitle => _l('createJobAdFailedTitle');
  String get createJobAdFailedContent => _l('createJobAdFailedContent');
  String get createJobAdFailedOptionReset => _l('createJobAdFailedOptionReset');
  String get createJobAdFailedOptionTryAgain =>
      _l('createJobAdFailedOptionTryAgain');
  String get createJobAdButtonPrevious => _l('createJobAdButtonPrevious');
  String get createJobAdButtonNext => _l('createJobAdButtonNext');
  String get createJobAdButtonCreate => _l('createJobAdButtonCreate');
  String get editJobAdButtonEdit => _l('editJobAdButtonEdit');
  String get createJobAdJobTextboxLabel => _l('createJobAdJobTextboxLabel');
  String get createJobAdYearsOfExperienceTextboxLabel =>
      _l('createJobAdYearsOfExperienceTextboxLabel');
  String get createJobAdSalarayExceptionScetionLabel =>
      _l('createJobAdSalarayExceptionScetionLabel');
  String get createJobAdTitleJobDescription =>
      _l('createJobAdTitleJobDescription');
  String get createJobAdFreelanceType => _l('createJobAdFreelanceType');
  String get createJobAdRemoteWorkPossible =>
      _l('createJobAdRemoteWorkPossible');
  String get createJobAdHardskillsLabel => _l('createJobAdHardskillsLabel');
  String get createJobAdHardskillsHelp => _l('createJobAdHardskillsHelp');
  String get createJobAdHardskillsLabelError =>
      _l('createJobAdHardskillsLabelError');
  String get createJobAdHardskillsTextBoxLabel =>
      _l('createJobAdHardskillsTextBoxLabel');
  String get createJobAdSoftskillsLabel => _l('createJobAdSoftskillsLabel');
  String get createJobAdSoftskillsSelectedLabel =>
      _l('createJobAdSoftskillsSelectedLabel');
  String get recruiteraddApprenticeshipNoProfessionFoundText =>
      _l('recruiteraddApprenticeshipNoProfessionFoundText');
  String get recruiteraddStudyNoMajorsFoundText =>
      _l('recruiteraddStudyNoMajorsFoundText');
  String get createJobAdApprenticeshipLabel =>
      _l('createJobAdApprenticeshipLabel');
  String get createJobAdApprenticeshipNoItems =>
      _l('createJobAdApprenticeshipNoItems');
  String get createJobadLookingforEnrolledStudents =>
      _l('createJobadLookingforEnrolledStudents');
  String get createJobadLookingfortrainee => _l('createJobadLookingfortrainee');
  String get editjobAdFloatingButtonAddStudyLabel =>
      _l('editjobAdFloatingButtonAddStudyLabel');
  String get editJobAdFloatingButtonAddApprenticeshipLabel =>
      _l('editJobAdFloatingButtonAddApprenticeshipLabel');
  String get createJobAdTitleAdjustments => _l('createJobAdTitleAdjustments');
  String get createJobAdScoreAdcustmentsSectionTitle =>
      _l('createJobAdScoreAdcustmentsSectionTitle');
  String get createJobAdMatchScoreSliderLabel =>
      _l('createJobAdMatchScoreSliderLabel');
  String get createJobAdHardskillScoreSliderLabel =>
      _l('createJobAdHardskillScoreSliderLabel');
  String get createJobAdSoftskillScoreSliderLabel =>
      _l('createJobAdSoftskillScoreSliderLabel');
  String get createJobAdSalaryScoreSliderLabel =>
      _l('createJobAdSalaryScoreSliderLabel');
  String get createJobAdDistanceScoreSliderLabel =>
      _l('createJobAdDistanceScoreSliderLabel');
  String get createJobAdDegreeScoreSliderLabel =>
      _l('createJobAdDegreeScoreSliderLabel');
  String get createJobAdScoreInfoTitle => _l('createJobAdScoreInfoTitle');
  String get createJobAdScoreInfoText1 => _l('createJobAdScoreInfoText1');
  String get createJobAdScoreInfoText2 => _l('createJobAdScoreInfoText2');
  String get createJobAdScoreInfoText3 => _l('createJobAdScoreInfoText3');
  String get createJobAdScoreInfoText4 => _l('createJobAdScoreInfoText4');
  String get createJobAdScoreInfoText5 => _l('createJobAdScoreInfoText5');
  String get createJobAdScoreInfoCloseButton =>
      _l('createJobAdScoreInfoCloseButton');
  String get jobAdDetailSoftskillsLabel => _l('jobAdDetailSoftskillsLabel');
  String get jobAdDetailSoftskillsSelectedLabel =>
      _l('jobAdDetailSoftskillsSelectedLabel');
  String get recruiterProfileFormLabel => _l('recruiterProfileFormLabel');
  String get recruiterProfileCompanySectionTitle =>
      _l('recruiterProfileCompanySectionTitle');
  String get recruiterProfileContactSectionTitle =>
      _l('recruiterProfileContactSectionTitle');
  String get recruiterProfileWelcomeMessageTitle =>
      _l('recruiterProfileWelcomeMessageTitle');
  String get recruiterProfilePositionEmptyLabel =>
      _l('recruiterProfilePositionEmptyLabel');
  String get recruiterEditProfileInfoSectionTitle =>
      _l('recruiterEditProfileInfoSectionTitle');
  String get recruiterEditProfileFirstNameLabel =>
      _l('recruiterEditProfileFirstNameLabel');
  String get recruiterEditProfileLastNameLabel =>
      _l('recruiterEditProfileLastNameLabel');
  String get recruiterEditProfilePositionLabel =>
      _l('recruiterEditProfilePositionLabel');
  String get recruiterEditProfileWelcomeMessageLabel =>
      _l('recruiterEditProfileWelcomeMessageLabel');
  String get recruiterEditProfileWelcomeMessageHintText =>
      _l('recruiterEditProfileWelcomeMessageHintText');
  String get recruiterEditProfilePositionHintText =>
      _l('recruiterEditProfilePositionHintText');
  String get recruiterEditProfileSaveButtonLabel =>
      _l('recruiterEditProfileSaveButtonLabel');
  String get recruiterEditProfilePhoneLabel =>
      _l('recruiterEditProfilePhoneLabel');
  String talentSoftskillsTooLittleSelectedError(
      int minimumSelectedSoftskills) =>
      _l('talentSoftskillsTooLittleSelectedError');
  String? screenTitle(screen) {
    switch (screen) {
      case 'talentJobMap':
        return talentJobMapFormLabel;
      case 'talentMatches':
        return talentMatchesFormLabel;
      case 'talentChats':
        return talentChatsFormLabel;
      case 'talentProfile':
        return talentProfileFormLabel;
    }
    return null;
  }

  String? get publicationPriceTitle => _l('publicationPriceTitle');
  String? publicationPriceInformation(int? publicationPeriodInDays) =>
      _l('publicationPriceInformation')(publicationPeriodInDays!.toInt());
  String publicationPriceOrderLineFeeDescription(double percentage) =>
      _l('publicationPriceOrderLineFeeDescription')(percentage);
  String get publicationPriceOrderLineFee => _l('publicationPriceOrderLineFee');
  String get publicationPriceOrderLineDiscount =>
      _l('publicationPriceOrderLineDiscount');
  String publicationPriceOrderLinePrecentageDiscountDescription(
      String code, double percentage) =>
      _l('publicationPriceOrderLinePrecentageDiscountDescription')(
          code, percentage);
  String publicationPriceOrderLineFixedPriceDiscountDescription(
      String code, double? percentage) =>
      _l('publicationPriceOrderLineFixedPriceDiscountDescription')(
          code, percentage);
  String get publicationPriceOrderLineSubtotal =>
      _l('publicationPriceOrderLineSubtotal');
  String get publicationPriceOrderLineTax => _l('publicationPriceOrderLineTax');
  String publicationPriceOrderLineTaxDescription(double percentage) =>
      _l('publicationPriceOrderLineTaxDescription')(percentage);
  String get publicationPriceOrderLineTotal =>
      _l('publicationPriceOrderLineTotal');
  String get publicationCouponCodeTitle => _l('publicationCouponCodeTitle');
  String publicationCouponCodeApplied(String code) =>
      _l('publicationCouponCodeApplied')(code);

  String generalCurrencyEuro(double amount) =>
      _l('generalCurrencyEuro')(amount);

  String get notificationOpenChatAction => _l('notificationOpenChatAction');
  String get notificationOpenChatCancelAction =>
      _l('notificationOpenChatCancelAction');
  String get notificationGenericOkAction => _l('notificationGenericOkAction');
  String get notificationOpenChatQuestion => _l('notificationOpenChatQuestion');
  String get notificationOpenChatError => _l('notificationOpenChatError');
  //Industry
  String get industryTitle => _l('industryTitle');
  String get industryNotSelected => _l('industryNotSelected');
  String get industryRecruiterExplanation => _l('industryRecruiterExplanation');
  String get industryTalentExplanation => _l('industryTalentExplanation');
  String get firstStepIndustryTitle => _l('firstStepIndustryTitle');
  String get secondStepIndustryTitle => _l('secondStepIndustryTitle');
  String get thirdStepIndustryTitle => _l('thirdStepIndustryTitle');
  String get industryCloseButton => _l('industryCloseButton');
  String get industrySelectHint => _l('industrySelectHint');
  //Salary
  String get salaryHourly => _l('salaryHourly');
  String get salaryMonthly => _l('salaryMonthly');
  String get salaryYearly => _l('salaryYearly');
  //Forgot password
  String get forgotPasswordButton => _l('forgotPasswordButton');
  String get okButton => _l('okButton');
  String get recoverPasswordButton => _l('recoverPasswordButton');
  String get backToLoginButton => _l('backToLoginButton');
  String get recoverPasswordResultMessage => _l('recoverPasswordResultMessage');
  String get recoverPasswordResultMessageFail =>
      _l('recoverPasswordResultMessageFail');
  String get recoverPasswordDialog => _l('recoverPasswordDialog');
  //Pending email verification
  String get sendAgainButton => _l('sendAgainButton');
  String get verifyYourAccountTitle => _l('verifyYourAccountTitle');
  String get verifyYourAccountMessage => _l('verifyYourAccountMessage');
  String get sendVerificationEmailConfirmation =>
      _l('sendVerificationEmailConfirmation');
  String get sendVerificationEmailConfirmationError =>
      _l('sendVerificationEmailConfirmationError');
  String get signUpMandatoryFieldError => _l('signUpMandatoryFieldError');
  //Coupon errors
  String get priceHigherWithCoupon => _l('priceHigherWithCoupon');
  String get couponNotLongerAvailable => _l('couponNotLongerAvailable');
  String get couponNotAvailableYet => _l('couponNotAvailableYet');
  String get couponNotFound => _l('couponNotFound');
  //Settings
  String get settingsAppBarTitle => _l('settingsAppBarTitle');
  String get loginWithBiometrics => _l('loginWithBiometrics');
  String get loginWithBiometricsSubtitle => _l('loginWithBiometricsSubtitle');
  String get biometricsRequest => _l('biometricsRequest');
  String get noBiometricsAvailbleErrorMessage =>
      _l('noBiometricsAvailbleErrorMessage');
  String get biometricsButton => _l('biometricsButton');

  String get coronaJobad => _l('coronaJobad');
  String get coronaJobDescription => _l('coronaJobDescription');
  String get coronaHelperTitle => _l('coronaHelperTitle');
  String get coronaHelperDescription => _l('coronaHelperDescription');
  String get driverLicenseCreateJobad => _l('driverLicenseCreateJobad');
  String get driverLicenseJobadDetails => _l('driverLicenseJobadDetails');
  String get talentWithoutDriverLicense => _l('talentWithoutDriverLicense');
  String get talentWithDriverLicense => _l('talentWithDriverLicense');
  String get talentProfileDriverLicense => _l('talentProfileDriverLicense');
  String get talentProfileSalaryExpectationDescription =>
      _l('talentProfileSalaryExpectationDescription');
  String get talentProfileHardskillsDescription =>
      _l('talentProfileHardskillsDescription');
  String get talentChatHelpText => _l('talentChatHelpText');
  String get recruiterWelcomeMessageHelp => _l('recruiterWelcomeMessageHelp');
  String get recruiterJobAdLocationHelp => _l('recruiterJobAdLocationHelp');
  String get recruiterSelectSoftSkills => _l('recruiterSelectSoftSkills');
  String get recruiterSelectSoftSkillsError =>
      _l('recruiterSelectSoftSkillsError');
  String get recruiterSelectSoftSkillsSaved =>
      _l('recruiterSelectSoftSkillsSaved');
  String get talentHardSkillsInformation => _l('talentHardSkillsInformation');
  String get talentMissingInformationAlertTitle =>
      _l('talentMissingInformationAlertTitle');
  String get talentMissingInformationAlertMessage =>
      _l('talentMissingInformationAlertMessage');
  String get jobadFilterTitle => _l('jobadFilterTitle');
  String get jobadFilterEmptyMessage => _l('jobadFilterEmptyMessage');
  String get talentProfileNotCompletedTitle =>
      _l('talentProfileNotCompletedTitle');
  String get talentProfileNotCompletedMessage =>
      _l('talentProfileNotCompletedMessage');
  String get coronaHelperHelpText => _l('coronaHelperHelpText');
  String get mapWaitingMessage => _l('mapWaitingMessage');

}

class AppLocalizationsDelegate extends LocalizationsDelegate<Labels> {
  const AppLocalizationsDelegate();



  @override
  bool isSupported(Locale? locale){

    var supportedLang = supported_locales.firstWhere((l) => l.languageCode == locale!.languageCode);
    print(supportedLang);
    return true;



  }



  @override
  Future<Labels> load(Locale locale) {
    locator<UserDataService>().setLanguage(locale.languageCode);
    return SynchronousFuture(Labels(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;


}
