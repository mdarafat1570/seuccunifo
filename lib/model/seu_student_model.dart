// class DashboardModel {
//   String? id;
//   String? ugcId;
//   Name? name;
//   String? gender;
//   String? mobile;
//   String? email;
//   String? programName;
//   int? batchId;
//   String? departmentName;
//   EnrollingSemester? enrollingSemester;
//   String? startingSemester;
//   String? lastSemester;
//   bool? graduated;
//   var graduationDate;
//   String? eligibleForDegree;
//   var transferredStudent;
//   int? oldStudentId;
//   int? newStudentId;
//   var cancelledStudent;
//   var cancelledTime;
//   int? runningSemester;
//   int? preregisteredCourseCount;
//   int? preregisteredCredits;
//   int? registeredCourseCount;
//   int? registeredCredits;
//   String? creditsCompleted;
//   String? creditsAttempted;
//   var totalWaivedCredits;
//   int? totalDue;
//   int? minimumDue;
//   var adviserInitial;
//   var adviserUsername;
//   var adviserName;
//   var adviserDesignation;
//   List<GradeList>? gradeList;
//   List<RegisteredCourseList>? registeredCourseList;
//   var lateFineAmount;
//
//   DashboardModel(
//       {this.id,
//       this.ugcId,
//       this.name,
//       this.gender,
//       this.mobile,
//       this.email,
//       this.programName,
//       this.batchId,
//       this.departmentName,
//       this.enrollingSemester,
//       this.startingSemester,
//       this.lastSemester,
//       this.graduated,
//       this.graduationDate,
//       this.eligibleForDegree,
//       this.transferredStudent,
//       this.oldStudentId,
//       this.newStudentId,
//       this.cancelledStudent,
//       this.cancelledTime,
//       this.runningSemester,
//       this.preregisteredCourseCount,
//       this.preregisteredCredits,
//       this.registeredCourseCount,
//       this.registeredCredits,
//       this.creditsCompleted,
//       this.creditsAttempted,
//       this.totalWaivedCredits,
//       this.totalDue,
//       this.minimumDue,
//       this.adviserInitial,
//       this.adviserUsername,
//       this.adviserName,
//       this.adviserDesignation,
//       this.gradeList,
//       this.registeredCourseList,
//       this.lateFineAmount});
//
//   DashboardModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     ugcId = json['ugcId'];
//     name = json['name'] != null ? Name.fromJson(json['name']) : null;
//     gender = json['gender'];
//     mobile = json['mobile'];
//     email = json['email'];
//     programName = json['programName'];
//     batchId = json['batchId'];
//     departmentName = json['departmentName'];
//     enrollingSemester = json['enrollingSemester'] != null
//         ? EnrollingSemester.fromJson(json['enrollingSemester'])
//         : null;
//     startingSemester = json['startingSemester'];
//     lastSemester = json['lastSemester'];
//     graduated = json['graduated'];
//     graduationDate = json['graduationDate'];
//     eligibleForDegree = json['eligibleForDegree'];
//     transferredStudent = json['transferredStudent'];
//     oldStudentId = json['oldStudentId'];
//     newStudentId = json['newStudentId'];
//     cancelledStudent = json['cancelledStudent'];
//     cancelledTime = json['cancelledTime'];
//     runningSemester = json['runningSemester'];
//     preregisteredCourseCount = json['preregisteredCourseCount'];
//     preregisteredCredits = json['preregisteredCredits'];
//     registeredCourseCount = json['registeredCourseCount'];
//     registeredCredits = json['registeredCredits'];
//     creditsCompleted = json['creditsCompleted'];
//     creditsAttempted = json['creditsAttempted'];
//     totalWaivedCredits = json['totalWaivedCredits'];
//     totalDue = json['totalDue'];
//     minimumDue = json['minimumDue'];
//     adviserInitial = json['adviserInitial'];
//     adviserUsername = json['adviserUsername'];
//     adviserName = json['adviserName'];
//     adviserDesignation = json['adviserDesignation'];
//     if (json['gradeList'] != null) {
//       gradeList = <GradeList>[];
//       json['gradeList'].forEach((v) {
//         gradeList!.add(GradeList.fromJson(v));
//       });
//     }
//     if (json['registeredCourseList'] != null) {
//       registeredCourseList = <RegisteredCourseList>[];
//       json['registeredCourseList'].forEach((v) {
//         registeredCourseList!.add(RegisteredCourseList.fromJson(v));
//       });
//     }
//     lateFineAmount = json['lateFineAmount'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['ugcId'] = ugcId;
//     if (name != null) {
//       data['name'] = name!.toJson();
//     }
//     data['gender'] = gender;
//     data['mobile'] = mobile;
//     data['email'] = email;
//     data['programName'] = programName;
//     data['batchId'] = batchId;
//     data['departmentName'] = departmentName;
//     if (enrollingSemester != null) {
//       data['enrollingSemester'] = enrollingSemester!.toJson();
//     }
//     data['startingSemester'] = startingSemester;
//     data['lastSemester'] = lastSemester;
//     data['graduated'] = graduated;
//     data['graduationDate'] = graduationDate;
//     data['eligibleForDegree'] = eligibleForDegree;
//     data['transferredStudent'] = transferredStudent;
//     data['oldStudentId'] = oldStudentId;
//     data['newStudentId'] = newStudentId;
//     data['cancelledStudent'] = cancelledStudent;
//     data['cancelledTime'] = cancelledTime;
//     data['runningSemester'] = runningSemester;
//     data['preregisteredCourseCount'] = preregisteredCourseCount;
//     data['preregisteredCredits'] = preregisteredCredits;
//     data['registeredCourseCount'] = registeredCourseCount;
//     data['registeredCredits'] = registeredCredits;
//     data['creditsCompleted'] = creditsCompleted;
//     data['creditsAttempted'] = creditsAttempted;
//     data['totalWaivedCredits'] = totalWaivedCredits;
//     data['totalDue'] = totalDue;
//     data['minimumDue'] = minimumDue;
//     data['adviserInitial'] = adviserInitial;
//     data['adviserUsername'] = adviserUsername;
//     data['adviserName'] = adviserName;
//     data['adviserDesignation'] = adviserDesignation;
//     if (gradeList != null) {
//       data['gradeList'] = gradeList!.map((v) => v.toJson()).toList();
//     }
//     if (registeredCourseList != null) {
//       data['registeredCourseList'] =
//           registeredCourseList!.map((v) => v.toJson()).toList();
//     }
//     data['lateFineAmount'] = lateFineAmount;
//     return data;
//   }
// }
//
// class Name {
//   String? firstName;
//   String? middleName;
//   String? lastName;
//   String? fullName;
//
//   Name({this.firstName, this.middleName, this.lastName, this.fullName});
//
//   Name.fromJson(Map<String, dynamic> json) {
//     firstName = json['firstName'];
//     middleName = json['middleName'];
//     lastName = json['lastName'];
//     fullName = json['fullName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['firstName'] = firstName;
//     data['middleName'] = middleName;
//     data['lastName'] = lastName;
//     data['fullName'] = fullName;
//     return data;
//   }
// }
//
// class EnrollingSemester {
//   int? semesterNumber;
//   String? label;
//
//   EnrollingSemester({this.semesterNumber, this.label});
//
//   EnrollingSemester.fromJson(Map<String, dynamic> json) {
//     semesterNumber = json['semesterNumber'];
//     label = json['label'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['semesterNumber'] = semesterNumber;
//     data['label'] = label;
//     return data;
//   }
// }
//
// class GradeList {
//   EnrollingSemester? semester;
//   double? cgpa;
//
//   GradeList({this.semester, this.cgpa});
//
//   GradeList.fromJson(Map<String, dynamic> json) {
//     semester = json['semester'] != null
//         ? EnrollingSemester.fromJson(json['semester'])
//         : null;
//     cgpa = json['cgpa'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (semester != null) {
//       data['semester'] = semester!.toJson();
//     }
//     data['cgpa'] = cgpa;
//     return data;
//   }
// }
//
// class RegisteredCourseList {
//   OfferedSection? offeredSection;
//   String? registrationType;
//   int? credits;
//   bool? registered;
//
//   RegisteredCourseList(
//       {this.offeredSection,
//       this.registrationType,
//       this.credits,
//       this.registered});
//
//   RegisteredCourseList.fromJson(Map<String, dynamic> json) {
//     offeredSection = json['offeredSection'] != null
//         ? OfferedSection.fromJson(json['offeredSection'])
//         : null;
//     registrationType = json['registrationType'];
//     credits = json['credits'];
//     registered = json['registered'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (offeredSection != null) {
//       data['offeredSection'] = offeredSection!.toJson();
//     }
//     data['registrationType'] = registrationType;
//     data['credits'] = credits;
//     data['registered'] = registered;
//     return data;
//   }
// }
//
// class OfferedSection {
//   String? id;
//   Course? course;
//   int? section;
//   EnrollingSemester? semester;
//   AcademicProgram? academicProgram;
//   List<FacultyList>? facultyList;
//   List<SectionScheduleList>? sectionScheduleList;
//   int? sectionLimit;
//   var programWiseSectionLimitList;
//   var registeredStudentList;
//   var wishedStudentList;
//   var coursePrototype;
//   var classroomCode;
//   var exam;
//   var sectionWiseExamMarksList;
//   var sectionWiseExamSpecialGradeList;
//   var marksSubmitApplicationId;
//   var gradeSubmitApplicationId;
//   var applicationFinalDecision;
//   var note;
//   var midExamDate;
//   var finalExamDate;
//   var gradeReceiptInformation;
//   var scriptGivenInMid;
//   var scriptGivenInFinal;
//   var examRoomInMid;
//   var invigilatorUsernameInMid;
//   var invigilatorNameInMid;
//   var looseSheetGivenInMid;
//   var looseSheetGivenInFinal;
//   var examRoomInFinal;
//   var invigilatorUsernameInFinal;
//   var invigilatorNameInFinal;
//   var appearedStudentCountInFinal;
//   var usedScriptCountInMid;
//   var usedScriptCountInFinal;
//   var reportedScriptCountInFinal;
//
//   OfferedSection(
//       {this.id,
//       this.course,
//       this.section,
//       this.semester,
//       this.academicProgram,
//       this.facultyList,
//       this.sectionScheduleList,
//       this.sectionLimit,
//       this.programWiseSectionLimitList,
//       this.registeredStudentList,
//       this.wishedStudentList,
//       this.coursePrototype,
//       this.classroomCode,
//       this.exam,
//       this.sectionWiseExamMarksList,
//       this.sectionWiseExamSpecialGradeList,
//       this.marksSubmitApplicationId,
//       this.gradeSubmitApplicationId,
//       this.applicationFinalDecision,
//       this.note,
//       this.midExamDate,
//       this.finalExamDate,
//       this.gradeReceiptInformation,
//       this.scriptGivenInMid,
//       this.scriptGivenInFinal,
//       this.examRoomInMid,
//       this.invigilatorUsernameInMid,
//       this.invigilatorNameInMid,
//       this.looseSheetGivenInMid,
//       this.looseSheetGivenInFinal,
//       this.examRoomInFinal,
//       this.invigilatorUsernameInFinal,
//       this.invigilatorNameInFinal,
//       this.appearedStudentCountInFinal,
//       this.usedScriptCountInMid,
//       this.usedScriptCountInFinal,
//       this.reportedScriptCountInFinal});
//
//   OfferedSection.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     course =
//         json['course'] != null ? Course.fromJson(json['course']) : null;
//     section = json['section'];
//     semester = json['semester'] != null
//         ? EnrollingSemester.fromJson(json['semester'])
//         : null;
//     academicProgram = json['academicProgram'] != null
//         ? AcademicProgram.fromJson(json['academicProgram'])
//         : null;
//     if (json['facultyList'] != null) {
//       facultyList = <FacultyList>[];
//       json['facultyList'].forEach((v) {
//         facultyList!.add(FacultyList.fromJson(v));
//       });
//     }
//     if (json['sectionScheduleList'] != null) {
//       sectionScheduleList = <SectionScheduleList>[];
//       json['sectionScheduleList'].forEach((v) {
//         sectionScheduleList!.add(SectionScheduleList.fromJson(v));
//       });
//     }
//     sectionLimit = json['sectionLimit'];
//     programWiseSectionLimitList = json['programWiseSectionLimitList'];
//     registeredStudentList = json['registeredStudentList'];
//     wishedStudentList = json['wishedStudentList'];
//     coursePrototype = json['coursePrototype'];
//     classroomCode = json['classroomCode'];
//     exam = json['exam'];
//     sectionWiseExamMarksList = json['sectionWiseExamMarksList'];
//     sectionWiseExamSpecialGradeList = json['sectionWiseExamSpecialGradeList'];
//     marksSubmitApplicationId = json['marksSubmitApplicationId'];
//     gradeSubmitApplicationId = json['gradeSubmitApplicationId'];
//     applicationFinalDecision = json['applicationFinalDecision'];
//     note = json['note'];
//     midExamDate = json['midExamDate'];
//     finalExamDate = json['finalExamDate'];
//     gradeReceiptInformation = json['gradeReceiptInformation'];
//     scriptGivenInMid = json['scriptGivenInMid'];
//     scriptGivenInFinal = json['scriptGivenInFinal'];
//     examRoomInMid = json['examRoomInMid'];
//     invigilatorUsernameInMid = json['invigilatorUsernameInMid'];
//     invigilatorNameInMid = json['invigilatorNameInMid'];
//     looseSheetGivenInMid = json['looseSheetGivenInMid'];
//     looseSheetGivenInFinal = json['looseSheetGivenInFinal'];
//     examRoomInFinal = json['examRoomInFinal'];
//     invigilatorUsernameInFinal = json['invigilatorUsernameInFinal'];
//     invigilatorNameInFinal = json['invigilatorNameInFinal'];
//     appearedStudentCountInFinal = json['appearedStudentCountInFinal'];
//     usedScriptCountInMid = json['usedScriptCountInMid'];
//     usedScriptCountInFinal = json['usedScriptCountInFinal'];
//     reportedScriptCountInFinal = json['reportedScriptCountInFinal'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (course != null) {
//       data['course'] = course!.toJson();
//     }
//     data['section'] = section;
//     if (semester != null) {
//       data['semester'] = semester!.toJson();
//     }
//     if (academicProgram != null) {
//       data['academicProgram'] = academicProgram!.toJson();
//     }
//     if (facultyList != null) {
//       data['facultyList'] = facultyList!.map((v) => v.toJson()).toList();
//     }
//     if (sectionScheduleList != null) {
//       data['sectionScheduleList'] =
//           sectionScheduleList!.map((v) => v.toJson()).toList();
//     }
//     data['sectionLimit'] = sectionLimit;
//     data['programWiseSectionLimitList'] = programWiseSectionLimitList;
//     data['registeredStudentList'] = registeredStudentList;
//     data['wishedStudentList'] = wishedStudentList;
//     data['coursePrototype'] = coursePrototype;
//     data['classroomCode'] = classroomCode;
//     data['exam'] = exam;
//     data['sectionWiseExamMarksList'] = sectionWiseExamMarksList;
//     data['sectionWiseExamSpecialGradeList'] =
//         sectionWiseExamSpecialGradeList;
//     data['marksSubmitApplicationId'] = marksSubmitApplicationId;
//     data['gradeSubmitApplicationId'] = gradeSubmitApplicationId;
//     data['applicationFinalDecision'] = applicationFinalDecision;
//     data['note'] = note;
//     data['midExamDate'] = midExamDate;
//     data['finalExamDate'] = finalExamDate;
//     data['gradeReceiptInformation'] = gradeReceiptInformation;
//     data['scriptGivenInMid'] = scriptGivenInMid;
//     data['scriptGivenInFinal'] = scriptGivenInFinal;
//     data['examRoomInMid'] = examRoomInMid;
//     data['invigilatorUsernameInMid'] = invigilatorUsernameInMid;
//     data['invigilatorNameInMid'] = invigilatorNameInMid;
//     data['looseSheetGivenInMid'] = looseSheetGivenInMid;
//     data['looseSheetGivenInFinal'] = looseSheetGivenInFinal;
//     data['examRoomInFinal'] = examRoomInFinal;
//     data['invigilatorUsernameInFinal'] = invigilatorUsernameInFinal;
//     data['invigilatorNameInFinal'] = invigilatorNameInFinal;
//     data['appearedStudentCountInFinal'] = appearedStudentCountInFinal;
//     data['usedScriptCountInMid'] = usedScriptCountInMid;
//     data['usedScriptCountInFinal'] = usedScriptCountInFinal;
//     data['reportedScriptCountInFinal'] = reportedScriptCountInFinal;
//     return data;
//   }
// }
//
// class Course {
//   String? id;
//   String? code;
//   String? title;
//   String? label;
//
//   Course({this.id, this.code, this.title, this.label});
//
//   Course.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     code = json['code'];
//     title = json['title'];
//     label = json['label'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['code'] = code;
//     data['title'] = title;
//     data['label'] = label;
//     return data;
//   }
// }
//
// class AcademicProgram {
//   String? id;
//   String? name;
//   DegreeOffered? degreeOffered;
//
//   AcademicProgram({this.id, this.name, this.degreeOffered});
//
//   AcademicProgram.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     degreeOffered = json['degreeOffered'] != null
//         ? DegreeOffered.fromJson(json['degreeOffered'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     if (degreeOffered != null) {
//       data['degreeOffered'] = degreeOffered!.toJson();
//     }
//     return data;
//   }
// }
//
// class DegreeOffered {
//   String? id;
//   String? title;
//   void shortName;
//
//   DegreeOffered({this.id, this.title, this.shortName});
//
//   DegreeOffered.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     shortName = json['shortName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     data['shortName'] = shortName;
//     return data;
//   }
// }
//
// class FacultyList {
//   Name? name;
//   List<AddressList>? addressList;
//   List<PhoneList>? phoneList;
//   List<EmailAddressList>? emailAddressList;
//   String? gender;
//   Country? religion;
//   String? nationality;
//   String? bloodGroup;
//   String? dateOfBirth;
//   String? maritalStatus;
//   List<EducationalInformationList>? educationalInformationList;
//   List<PublicationList>? publicationList;
//   List<WorkExperienceList>? workExperienceList;
//   String? username;
//   String? type;
//   String? id;
//   EmploymentInformation? employmentInformation;
//   List<CourseTaughtList>? courseTaughtList;
//   List<ResearchInterestList>? researchInterestList;
//   String? createdBy;
//   String? createdTime;
//   bool? active;
//   List<String>? accessibleProgramList;
//   String? officialEmailAddress;
//   List<String>? accessibleOfficeList;
//   String? primaryPhoneNumber;
//   String? primaryEmailAddress;
//
//   FacultyList(
//       {this.name,
//       this.addressList,
//       this.phoneList,
//       this.emailAddressList,
//       this.gender,
//       this.religion,
//       this.nationality,
//       this.bloodGroup,
//       this.dateOfBirth,
//       this.maritalStatus,
//       this.educationalInformationList,
//       this.publicationList,
//       this.workExperienceList,
//       this.username,
//       this.type,
//       this.id,
//       this.employmentInformation,
//       this.courseTaughtList,
//       this.researchInterestList,
//       this.createdBy,
//       this.createdTime,
//       this.active,
//       this.accessibleProgramList,
//       this.officialEmailAddress,
//       this.accessibleOfficeList,
//       this.primaryPhoneNumber,
//       this.primaryEmailAddress});
//
//   FacultyList.fromJson(Map<String, dynamic> json) {
//     name = json['name'] != null ? Name.fromJson(json['name']) : null;
//     if (json['addressList'] != null) {
//       addressList = <AddressList>[];
//       json['addressList'].forEach((v) {
//         addressList!.add(AddressList.fromJson(v));
//       });
//     }
//     if (json['phoneList'] != null) {
//       phoneList = <PhoneList>[];
//       json['phoneList'].forEach((v) {
//         phoneList!.add(PhoneList.fromJson(v));
//       });
//     }
//     if (json['emailAddressList'] != null) {
//       emailAddressList = <EmailAddressList>[];
//       json['emailAddressList'].forEach((v) {
//         emailAddressList!.add(EmailAddressList.fromJson(v));
//       });
//     }
//     gender = json['gender'];
//     religion = json['religion'] != null
//         ? Country.fromJson(json['religion'])
//         : null;
//     nationality = json['nationality'];
//     bloodGroup = json['bloodGroup'];
//     dateOfBirth = json['dateOfBirth'];
//     maritalStatus = json['maritalStatus'];
//     if (json['educationalInformationList'] != null) {
//       educationalInformationList = <EducationalInformationList>[];
//       json['educationalInformationList'].forEach((v) {
//         educationalInformationList!
//             .add(EducationalInformationList.fromJson(v));
//       });
//     }
//     if (json['publicationList'] != null) {
//       publicationList = <PublicationList>[];
//       json['publicationList'].forEach((v) {
//         publicationList!.add(PublicationList.fromJson(v));
//       });
//     }
//     if (json['workExperienceList'] != null) {
//       workExperienceList = <WorkExperienceList>[];
//       json['workExperienceList'].forEach((v) {
//         workExperienceList!.add(WorkExperienceList.fromJson(v));
//       });
//     }
//     username = json['username'];
//     type = json['type'];
//     id = json['id'];
//     employmentInformation = json['employmentInformation'] != null
//         ? EmploymentInformation.fromJson(json['employmentInformation'])
//         : null;
//     if (json['courseTaughtList'] != null) {
//       courseTaughtList = <CourseTaughtList>[];
//       json['courseTaughtList'].forEach((v) {
//         courseTaughtList!.add(CourseTaughtList.fromJson(v));
//       });
//     }
//     if (json['researchInterestList'] != null) {
//       researchInterestList = <ResearchInterestList>[];
//       json['researchInterestList'].forEach((v) {
//         researchInterestList!.add(ResearchInterestList.fromJson(v));
//       });
//     }
//     createdBy = json['createdBy'];
//     createdTime = json['createdTime'];
//     active = json['active'];
//     accessibleProgramList = json['accessibleProgramList'].cast<String>();
//     officialEmailAddress = json['officialEmailAddress'];
//     accessibleOfficeList = json['accessibleOfficeList'].cast<String>();
//     primaryPhoneNumber = json['primaryPhoneNumber'];
//     primaryEmailAddress = json['primaryEmailAddress'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (name != null) {
//       data['name'] = name!.toJson();
//     }
//     if (addressList != null) {
//       data['addressList'] = addressList!.map((v) => v.toJson()).toList();
//     }
//     if (phoneList != null) {
//       data['phoneList'] = phoneList!.map((v) => v.toJson()).toList();
//     }
//     if (emailAddressList != null) {
//       data['emailAddressList'] =
//           emailAddressList!.map((v) => v.toJson()).toList();
//     }
//     data['gender'] = gender;
//     if (religion != null) {
//       data['religion'] = religion!.toJson();
//     }
//     data['nationality'] = nationality;
//     data['bloodGroup'] = bloodGroup;
//     data['dateOfBirth'] = dateOfBirth;
//     data['maritalStatus'] = maritalStatus;
//     if (educationalInformationList != null) {
//       data['educationalInformationList'] =
//           educationalInformationList!.map((v) => v.toJson()).toList();
//     }
//     if (publicationList != null) {
//       data['publicationList'] =
//           publicationList!.map((v) => v.toJson()).toList();
//     }
//     if (workExperienceList != null) {
//       data['workExperienceList'] =
//           workExperienceList!.map((v) => v.toJson()).toList();
//     }
//     data['username'] = username;
//     data['type'] = type;
//     data['id'] = id;
//     if (employmentInformation != null) {
//       data['employmentInformation'] = employmentInformation!.toJson();
//     }
//     if (courseTaughtList != null) {
//       data['courseTaughtList'] =
//           courseTaughtList!.map((v) => v.toJson()).toList();
//     }
//     if (researchInterestList != null) {
//       data['researchInterestList'] =
//           researchInterestList!.map((v) => v.toJson()).toList();
//     }
//     data['createdBy'] = createdBy;
//     data['createdTime'] = createdTime;
//     data['active'] = active;
//     data['accessibleProgramList'] = accessibleProgramList;
//     data['officialEmailAddress'] = officialEmailAddress;
//     data['accessibleOfficeList'] = accessibleOfficeList;
//     data['primaryPhoneNumber'] = primaryPhoneNumber;
//     data['primaryEmailAddress'] = primaryEmailAddress;
//     return data;
//   }
// }
//
// class salutationName {
//   String? salutationType;
//   String? firstName;
//   String? lastName;
//   String? fullName;
//   String? middleName;
//
//   salutationName(
//       {this.salutationType,
//       this.firstName,
//       this.lastName,
//       this.fullName,
//       this.middleName});
//
//   salutationName.fromJson(Map<String, dynamic> json) {
//     salutationType = json['salutationType'];
//     firstName = json['firstName'];
//     lastName = json['lastName'];
//     fullName = json['fullName'];
//     middleName = json['middleName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['salutationType'] = salutationType;
//     data['firstName'] = firstName;
//     data['lastName'] = lastName;
//     data['fullName'] = fullName;
//     data['middleName'] = middleName;
//     return data;
//   }
// }
//
// class AddressList {
//   String? id;
//   String? addressType;
//   String? streetAddress;
//   String? division;
//   String? district;
//   String? subDistrict;
//   String? policeStation;
//   String? postOffice;
//   String? postCode;
//   Country? country;
//
//   AddressList(
//       {this.id,
//       this.addressType,
//       this.streetAddress,
//       this.division,
//       this.district,
//       this.subDistrict,
//       this.policeStation,
//       this.postOffice,
//       this.postCode,
//       this.country});
//
//   AddressList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     addressType = json['addressType'];
//     streetAddress = json['streetAddress'];
//     division = json['division'];
//     district = json['district'];
//     subDistrict = json['subDistrict'];
//     policeStation = json['policeStation'];
//     postOffice = json['postOffice'];
//     postCode = json['postCode'];
//     country =
//         json['country'] != null ? Country.fromJson(json['country']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['addressType'] = addressType;
//     data['streetAddress'] = streetAddress;
//     data['division'] = division;
//     data['district'] = district;
//     data['subDistrict'] = subDistrict;
//     data['policeStation'] = policeStation;
//     data['postOffice'] = postOffice;
//     data['postCode'] = postCode;
//     if (country != null) {
//       data['country'] = country!.toJson();
//     }
//     return data;
//   }
// }
//
// class Country {
//   String? name;
//
//   Country({this.name});
//
//   Country.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     return data;
//   }
// }
//
// class PhoneList {
//   String? phoneType;
//   String? countryCode;
//   String? number;
//   bool? primary;
//   String? phoneNumberAsAString;
//   String? mobileNumberAsAString;
//   String? phoneNumberAsString;
//   String? mobileNumberAsString;
//
//   PhoneList(
//       {this.phoneType,
//       this.countryCode,
//       this.number,
//       this.primary,
//       this.phoneNumberAsAString,
//       this.mobileNumberAsAString,
//       this.phoneNumberAsString,
//       this.mobileNumberAsString});
//
//   PhoneList.fromJson(Map<String, dynamic> json) {
//     phoneType = json['phoneType'];
//     countryCode = json['countryCode'];
//     number = json['number'];
//     primary = json['primary'];
//     phoneNumberAsAString = json['phoneNumberAsAString'];
//     mobileNumberAsAString = json['mobileNumberAsAString'];
//     phoneNumberAsString = json['phoneNumberAsString'];
//     mobileNumberAsString = json['mobileNumberAsString'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['phoneType'] = phoneType;
//     data['countryCode'] = countryCode;
//     data['number'] = number;
//     data['primary'] = primary;
//     data['phoneNumberAsAString'] = phoneNumberAsAString;
//     data['mobileNumberAsAString'] = mobileNumberAsAString;
//     data['phoneNumberAsString'] = phoneNumberAsString;
//     data['mobileNumberAsString'] = mobileNumberAsString;
//     return data;
//   }
// }
//
// class EmailAddressList {
//   String? emailType;
//   String? address;
//   bool? primary;
//
//   EmailAddressList({this.emailType, this.address, this.primary});
//
//   EmailAddressList.fromJson(Map<String, dynamic> json) {
//     emailType = json['emailType'];
//     address = json['address'];
//     primary = json['primary'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['emailType'] = emailType;
//     data['address'] = address;
//     data['primary'] = primary;
//     return data;
//   }
// }
//
// class EducationalInformationList {
//   String? board;
//   String? id;
//   String? degree;
//   DegreeConcentration? degreeConcentration;
//   DegreeResult? degreeResult;
//   Country? educationalInstitute;
//   int? yearOfPassing;
//   String? startDate;
//   String? endDate;
//   int? duration;
//   bool? verified;
//   String? verifiedBy;
//   bool? visibleInWebsite;
//
//   EducationalInformationList(
//       {this.board,
//       this.id,
//       this.degree,
//       this.degreeConcentration,
//       this.degreeResult,
//       this.educationalInstitute,
//       this.yearOfPassing,
//       this.startDate,
//       this.endDate,
//       this.duration,
//       this.verified,
//       this.verifiedBy,
//       this.visibleInWebsite});
//
//   EducationalInformationList.fromJson(Map<String, dynamic> json) {
//     board = json['board'];
//     id = json['id'];
//     degree = json['degree'];
//     degreeConcentration = json['degreeConcentration'] != null
//         ? DegreeConcentration.fromJson(json['degreeConcentration'])
//         : null;
//     degreeResult = json['degreeResult'] != null
//         ? DegreeResult.fromJson(json['degreeResult'])
//         : null;
//     educationalInstitute = json['educationalInstitute'] != null
//         ? Country.fromJson(json['educationalInstitute'])
//         : null;
//     yearOfPassing = json['yearOfPassing'];
//     startDate = json['startDate'];
//     endDate = json['endDate'];
//     duration = json['duration'];
//     verified = json['verified'];
//     verifiedBy = json['verifiedBy'];
//     visibleInWebsite = json['visibleInWebsite'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['board'] = board;
//     data['id'] = id;
//     data['degree'] = degree;
//     if (degreeConcentration != null) {
//       data['degreeConcentration'] = degreeConcentration!.toJson();
//     }
//     if (degreeResult != null) {
//       data['degreeResult'] = degreeResult!.toJson();
//     }
//     if (educationalInstitute != null) {
//       data['educationalInstitute'] = educationalInstitute!.toJson();
//     }
//     data['yearOfPassing'] = yearOfPassing;
//     data['startDate'] = startDate;
//     data['endDate'] = endDate;
//     data['duration'] = duration;
//     data['verified'] = verified;
//     data['verifiedBy'] = verifiedBy;
//     data['visibleInWebsite'] = visibleInWebsite;
//     return data;
//   }
// }
//
// class DegreeConcentration {
//   String? concentration;
//
//   DegreeConcentration({this.concentration});
//
//   DegreeConcentration.fromJson(Map<String, dynamic> json) {
//     concentration = json['concentration'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['concentration'] = concentration;
//     return data;
//   }
// }
//
// class DegreeResult {
//   String? degreeResultType;
//   String? letterGrade;
//   String? rollNumber;
//   double? cgpa;
//   double? cgpaWithoutFourthSubject;
//   int? scale;
//
//   DegreeResult(
//       {this.degreeResultType,
//       this.letterGrade,
//       this.rollNumber,
//       this.cgpa,
//       this.cgpaWithoutFourthSubject,
//       this.scale});
//
//   DegreeResult.fromJson(Map<String, dynamic> json) {
//     degreeResultType = json['degreeResultType'];
//     letterGrade = json['letterGrade'];
//     rollNumber = json['rollNumber'];
//     cgpa = json['cgpa'];
//     cgpaWithoutFourthSubject = json['cgpaWithoutFourthSubject'];
//     scale = json['scale'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['degreeResultType'] = degreeResultType;
//     data['letterGrade'] = letterGrade;
//     data['rollNumber'] = rollNumber;
//     data['cgpa'] = cgpa;
//     data['cgpaWithoutFourthSubject'] = cgpaWithoutFourthSubject;
//     data['scale'] = scale;
//     return data;
//   }
// }
//
// class PublicationList {
//   String? id;
//   String? publicationType;
//   List<AuthorList>? authorList;
//   PublicationInformation? publicationInformation;
//   bool? localPublication;
//   int? contributionPercentage;
//   String? doi;
//   bool? verified;
//   bool? visibleInWebsite;
//
//   PublicationList(
//       {this.id,
//       this.publicationType,
//       this.authorList,
//       this.publicationInformation,
//       this.localPublication,
//       this.contributionPercentage,
//       this.doi,
//       this.verified,
//       this.visibleInWebsite});
//
//   PublicationList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     publicationType = json['publicationType'];
//     if (json['authorList'] != null) {
//       authorList = <AuthorList>[];
//       json['authorList'].forEach((v) {
//         authorList!.add(AuthorList.fromJson(v));
//       });
//     }
//     publicationInformation = json['publicationInformation'] != null
//         ? PublicationInformation.fromJson(json['publicationInformation'])
//         : null;
//     localPublication = json['localPublication'];
//     contributionPercentage = json['contributionPercentage'];
//     doi = json['doi'];
//     verified = json['verified'];
//     visibleInWebsite = json['visibleInWebsite'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['publicationType'] = publicationType;
//     if (authorList != null) {
//       data['authorList'] = authorList!.map((v) => v.toJson()).toList();
//     }
//     if (publicationInformation != null) {
//       data['publicationInformation'] = publicationInformation!.toJson();
//     }
//     data['localPublication'] = localPublication;
//     data['contributionPercentage'] = contributionPercentage;
//     data['doi'] = doi;
//     data['verified'] = verified;
//     data['visibleInWebsite'] = visibleInWebsite;
//     return data;
//   }
// }
//
// class AuthorList {
//   Name? name;
//   String? authorType;
//   String? institute;
//   String? designation;
//   void primaryPhoneNumber;
//   void primaryEmailAddress;
//
//   AuthorList(
//       {this.name,
//       this.authorType,
//       this.institute,
//       this.designation,
//       this.primaryPhoneNumber,
//       this.primaryEmailAddress});
//
//   AuthorList.fromJson(Map<String, dynamic> json) {
//     name = json['name'] != null ? Name.fromJson(json['name']) : null;
//     authorType = json['authorType'];
//     institute = json['institute'];
//     designation = json['designation'];
//     primaryPhoneNumber = json['primaryPhoneNumber'];
//     primaryEmailAddress = json['primaryEmailAddress'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (name != null) {
//       data['name'] = name!.toJson();
//     }
//     data['authorType'] = authorType;
//     data['institute'] = institute;
//     data['designation'] = designation;
//     data['primaryPhoneNumber'] = primaryPhoneNumber;
//     data['primaryEmailAddress'] = primaryEmailAddress;
//     return data;
//   }
// }
//
// class NameOfTwo {
//   String? firstName;
//   String? fullName;
//
//   NameOfTwo({this.firstName, this.fullName});
//
//   NameOfTwo.fromJson(Map<String, dynamic> json) {
//     firstName = json['firstName'];
//     fullName = json['fullName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['firstName'] = firstName;
//     data['fullName'] = fullName;
//     return data;
//   }
// }
//
// class PublicationInformation {
//   String? titleOfPaper;
//   String? volume;
//   String? issue;
//   String? edition;
//   String? series;
//   int? pageStart;
//   int? pageEnd;
//   String? issnNumber;
//   String? isbnNumber;
//   String? titleOfPublication;
//   String? paperAbstract;
//   String? publisher;
//   PublisherAddress? publisherAddress;
//   String? publicationDate;
//
//   PublicationInformation(
//       {this.titleOfPaper,
//       this.volume,
//       this.issue,
//       this.edition,
//       this.series,
//       this.pageStart,
//       this.pageEnd,
//       this.issnNumber,
//       this.isbnNumber,
//       this.titleOfPublication,
//       this.paperAbstract,
//       this.publisher,
//       this.publisherAddress,
//       this.publicationDate});
//
//   PublicationInformation.fromJson(Map<String, dynamic> json) {
//     titleOfPaper = json['titleOfPaper'];
//     volume = json['volume'];
//     issue = json['issue'];
//     edition = json['edition'];
//     series = json['series'];
//     pageStart = json['pageStart'];
//     pageEnd = json['pageEnd'];
//     issnNumber = json['issnNumber'];
//     isbnNumber = json['isbnNumber'];
//     titleOfPublication = json['titleOfPublication'];
//     paperAbstract = json['paperAbstract'];
//     publisher = json['publisher'];
//     publisherAddress = json['publisherAddress'] != null
//         ? PublisherAddress.fromJson(json['publisherAddress'])
//         : null;
//     publicationDate = json['publicationDate'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['titleOfPaper'] = titleOfPaper;
//     data['volume'] = volume;
//     data['issue'] = issue;
//     data['edition'] = edition;
//     data['series'] = series;
//     data['pageStart'] = pageStart;
//     data['pageEnd'] = pageEnd;
//     data['issnNumber'] = issnNumber;
//     data['isbnNumber'] = isbnNumber;
//     data['titleOfPublication'] = titleOfPublication;
//     data['paperAbstract'] = paperAbstract;
//     data['publisher'] = publisher;
//     if (publisherAddress != null) {
//       data['publisherAddress'] = publisherAddress!.toJson();
//     }
//     data['publicationDate'] = publicationDate;
//     return data;
//   }
// }
//
// class PublisherAddress {
//   String? state;
//   Country? country;
//   String? district;
//
//   PublisherAddress({this.state, this.country, this.district});
//
//   PublisherAddress.fromJson(Map<String, dynamic> json) {
//     state = json['state'];
//     country =
//         json['country'] != null ? Country.fromJson(json['country']) : null;
//     district = json['district'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['state'] = state;
//     if (country != null) {
//       data['country'] = country!.toJson();
//     }
//     data['district'] = district;
//     return data;
//   }
// }
//
// class WorkExperienceList {
//   String? id;
//   String? companyName;
//   String? companyType;
//   CompanyLocation? companyLocation;
//   ReferencePerson? referencePerson;
//   String? designation;
//   String? jobResponsibility;
//   String? achievement;
//   String? department;
//   String? startDate;
//   String? endDate;
//   double? duration;
//   String? employmentType;
//   bool? verified;
//   String? verifiedBy;
//   bool? visibleInWebsite;
//
//   WorkExperienceList(
//       {this.id,
//       this.companyName,
//       this.companyType,
//       this.companyLocation,
//       this.referencePerson,
//       this.designation,
//       this.jobResponsibility,
//       this.achievement,
//       this.department,
//       this.startDate,
//       this.endDate,
//       this.duration,
//       this.employmentType,
//       this.verified,
//       this.verifiedBy,
//       this.visibleInWebsite});
//
//   WorkExperienceList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     companyName = json['companyName'];
//     companyType = json['companyType'];
//     companyLocation = json['companyLocation'] != null
//         ? CompanyLocation.fromJson(json['companyLocation'])
//         : null;
//     referencePerson = json['referencePerson'] != null
//         ? ReferencePerson.fromJson(json['referencePerson'])
//         : null;
//     designation = json['designation'];
//     jobResponsibility = json['jobResponsibility'];
//     achievement = json['achievement'];
//     department = json['department'];
//     startDate = json['startDate'];
//     endDate = json['endDate'];
//     duration = json['duration'];
//     employmentType = json['employmentType'];
//     verified = json['verified'];
//     verifiedBy = json['verifiedBy'];
//     visibleInWebsite = json['visibleInWebsite'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['companyName'] = companyName;
//     data['companyType'] = companyType;
//     if (companyLocation != null) {
//       data['companyLocation'] = companyLocation!.toJson();
//     }
//     if (referencePerson != null) {
//       data['referencePerson'] = referencePerson!.toJson();
//     }
//     data['designation'] = designation;
//     data['jobResponsibility'] = jobResponsibility;
//     data['achievement'] = achievement;
//     data['department'] = department;
//     data['startDate'] = startDate;
//     data['endDate'] = endDate;
//     data['duration'] = duration;
//     data['employmentType'] = employmentType;
//     data['verified'] = verified;
//     data['verifiedBy'] = verifiedBy;
//     data['visibleInWebsite'] = visibleInWebsite;
//     return data;
//   }
// }
//
// class CompanyLocation {
//   String? district;
//   Country? country;
//
//   CompanyLocation({this.district, this.country});
//
//   CompanyLocation.fromJson(Map<String, dynamic> json) {
//     district = json['district'];
//     country =
//         json['country'] != null ? Country.fromJson(json['country']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['district'] = district;
//     if (country != null) {
//       data['country'] = country!.toJson();
//     }
//     return data;
//   }
// }
//
// class ReferencePerson {
//   Name? name;
//   void primaryPhoneNumber;
//   void primaryEmailAddress;
//
//   ReferencePerson(
//       {this.name, this.primaryPhoneNumber, this.primaryEmailAddress});
//
//   ReferencePerson.fromJson(Map<String, dynamic> json) {
//     name = json['name'] != null ? Name.fromJson(json['name']) : null;
//     primaryPhoneNumber = json['primaryPhoneNumber'];
//     primaryEmailAddress = json['primaryEmailAddress'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (name != null) {
//       data['name'] = name!.toJson();
//     }
//     data['primaryPhoneNumber'] = primaryPhoneNumber;
//     data['primaryEmailAddress'] = primaryEmailAddress;
//     return data;
//   }
// }
//
// class EmploymentInformation {
//   String? joiningDate;
//   List<EmployeeDesignationList>? employeeDesignationList;
//   bool? faculty;
//   String? facultyInitials;
//   String? primaryDesignation;
//   String? primaryDesignationRoom;
//   List<String>? primaryDesignationData;
//
//   EmploymentInformation(
//       {this.joiningDate,
//       this.employeeDesignationList,
//       this.faculty,
//       this.facultyInitials,
//       this.primaryDesignation,
//       this.primaryDesignationRoom,
//       this.primaryDesignationData});
//
//   EmploymentInformation.fromJson(Map<String, dynamic> json) {
//     joiningDate = json['joiningDate'];
//     if (json['employeeDesignationList'] != null) {
//       employeeDesignationList = <EmployeeDesignationList>[];
//       json['employeeDesignationList'].forEach((v) {
//         employeeDesignationList!.add(EmployeeDesignationList.fromJson(v));
//       });
//     }
//     faculty = json['faculty'];
//     facultyInitials = json['facultyInitials'];
//     primaryDesignation = json['primaryDesignation'];
//     primaryDesignationRoom = json['primaryDesignationRoom'];
//     primaryDesignationData = json['primaryDesignationData'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['joiningDate'] = joiningDate;
//     if (employeeDesignationList != null) {
//       data['employeeDesignationList'] =
//           employeeDesignationList!.map((v) => v.toJson()).toList();
//     }
//     data['faculty'] = faculty;
//     data['facultyInitials'] = facultyInitials;
//     data['primaryDesignation'] = primaryDesignation;
//     data['primaryDesignationRoom'] = primaryDesignationRoom;
//     data['primaryDesignationData'] = primaryDesignationData;
//     return data;
//   }
// }
//
// class EmployeeDesignationList {
//   String? id;
//   Designation? designation;
//   EmploymentType? employmentType;
//   bool? primaryDesignation;
//   String? startDate;
//   int? hierarchy;
//   Room? room;
//   String? seatingZone;
//   bool? officePhoneVisibleInWebsite;
//   bool? active;
//   String? endDate;
//
//   EmployeeDesignationList(
//       {this.id,
//       this.designation,
//       this.employmentType,
//       this.primaryDesignation,
//       this.startDate,
//       this.hierarchy,
//       this.room,
//       this.seatingZone,
//       this.officePhoneVisibleInWebsite,
//       this.active,
//       this.endDate});
//
//   EmployeeDesignationList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     designation = json['designation'] != null
//         ? Designation.fromJson(json['designation'])
//         : null;
//     employmentType = json['employmentType'] != null
//         ? EmploymentType.fromJson(json['employmentType'])
//         : null;
//     primaryDesignation = json['primaryDesignation'];
//     startDate = json['startDate'];
//     hierarchy = json['hierarchy'];
//     room = json['room'] != null ? Room.fromJson(json['room']) : null;
//     seatingZone = json['seatingZone'];
//     officePhoneVisibleInWebsite = json['officePhoneVisibleInWebsite'];
//     active = json['active'];
//     endDate = json['endDate'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (designation != null) {
//       data['designation'] = designation!.toJson();
//     }
//     if (employmentType != null) {
//       data['employmentType'] = employmentType!.toJson();
//     }
//     data['primaryDesignation'] = primaryDesignation;
//     data['startDate'] = startDate;
//     data['hierarchy'] = hierarchy;
//     if (room != null) {
//       data['room'] = room!.toJson();
//     }
//     data['seatingZone'] = seatingZone;
//     data['officePhoneVisibleInWebsite'] = officePhoneVisibleInWebsite;
//     data['active'] = active;
//     data['endDate'] = endDate;
//     return data;
//   }
// }
//
// class Designation {
//   String? id;
//   Rank? rank;
//   String? designationType;
//   Office? office;
//
//   Designation({this.id, this.rank, this.designationType, this.office});
//
//   Designation.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     rank = json['rank'] != null ? Rank.fromJson(json['rank']) : null;
//     designationType = json['designationType'];
//     office =
//         json['office'] != null ? Office.fromJson(json['office']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (rank != null) {
//       data['rank'] = rank!.toJson();
//     }
//     data['designationType'] = designationType;
//     if (office != null) {
//       data['office'] = office!.toJson();
//     }
//     return data;
//   }
// }
//
// class Rank {
//   String? id;
//   String? name;
//
//   Rank({this.id, this.name});
//
//   Rank.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     return data;
//   }
// }
//
// class Office {
//   String? id;
//   String? officeType;
//   String? name;
//   int? officeId;
//   int? ussId;
//   String? gsuiteGroupName;
//   String? establishmentDate;
//   String? logo;
//   bool? active;
//
//   Office(
//       {this.id,
//       this.officeType,
//       this.name,
//       this.officeId,
//       this.ussId,
//       this.gsuiteGroupName,
//       this.establishmentDate,
//       this.logo,
//       this.active});
//
//   Office.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     officeType = json['officeType'];
//     name = json['name'];
//     officeId = json['officeId'];
//     ussId = json['ussId'];
//     gsuiteGroupName = json['gsuiteGroupName'];
//     establishmentDate = json['establishmentDate'];
//     logo = json['logo'];
//     active = json['active'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['officeType'] = officeType;
//     data['name'] = name;
//     data['officeId'] = officeId;
//     data['ussId'] = ussId;
//     data['gsuiteGroupName'] = gsuiteGroupName;
//     data['establishmentDate'] = establishmentDate;
//     data['logo'] = logo;
//     data['active'] = active;
//     return data;
//   }
// }
//
// class EmploymentType {
//   String? id;
//   String? type;
//
//   EmploymentType({this.id, this.type});
//
//   EmploymentType.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['type'] = type;
//     return data;
//   }
// }
//
// class Room {
//   String? id;
//   Building? building;
//   int? floorNumber;
//   String? roomNumber;
//   String? roomCapacity;
//   String? alternateName;
//   String? roomType;
//   String? name;
//
//   Room(
//       {this.id,
//       this.building,
//       this.floorNumber,
//       this.roomNumber,
//       this.roomCapacity,
//       this.alternateName,
//       this.roomType,
//       this.name});
//
//   Room.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     building = json['building'] != null
//         ? Building.fromJson(json['building'])
//         : null;
//     floorNumber = json['floorNumber'];
//     roomNumber = json['roomNumber'];
//     roomCapacity = json['roomCapacity'];
//     alternateName = json['alternateName'];
//     roomType = json['roomType'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (building != null) {
//       data['building'] = building!.toJson();
//     }
//     data['floorNumber'] = floorNumber;
//     data['roomNumber'] = roomNumber;
//     data['roomCapacity'] = roomCapacity;
//     data['alternateName'] = alternateName;
//     data['roomType'] = roomType;
//     data['name'] = name;
//     return data;
//   }
// }
//
// class Building {
//   String? id;
//   String? prefix;
//   String? name;
//
//   Building({this.id, this.prefix, this.name});
//
//   Building.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     prefix = json['prefix'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['prefix'] = prefix;
//     data['name'] = name;
//     return data;
//   }
// }
//
// class CourseTaughtList {
//   int? id;
//   String? code;
//   String? title;
//   String? label;
//
//   CourseTaughtList({this.id, this.code, this.title, this.label});
//
//   CourseTaughtList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     code = json['code'];
//     title = json['title'];
//     label = json['label'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['code'] = code;
//     data['title'] = title;
//     data['label'] = label;
//     return data;
//   }
// }
//
// class ResearchInterestList {
//   String? topic;
//   List<SubTopic>? subTopicList;
//
//   ResearchInterestList({this.topic, this.subTopicList});
//
//   ResearchInterestList.fromJson(Map<String, dynamic> json) {
//     topic = json['topic'];
//     if (json['subTopicList'] != null) {
//       subTopicList = <SubTopic>[];
//       json['subTopicList'].forEach((v) {
//         subTopicList!.add(SubTopic.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['topic'] = topic;
//     if (subTopicList != null) {
//       data['subTopicList'] = subTopicList!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class SubTopic {
//   String? name;
//
//   SubTopic({this.name});
//
//   SubTopic.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     return data;
//   }
// }
//
// class SectionScheduleList {
//   String? id;
//   TimeSlot? timeSlot;
//   Room? room;
//   bool? requiredProjector;
//   bool? requiredFacultyComputer;
//   String? label;
//
//   SectionScheduleList(
//       {this.id,
//       this.timeSlot,
//       this.room,
//       this.requiredProjector,
//       this.requiredFacultyComputer,
//       this.label});
//
//   SectionScheduleList.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     timeSlot = json['timeSlot'] != null
//         ? TimeSlot.fromJson(json['timeSlot'])
//         : null;
//     room = json['room'] != null ? Room.fromJson(json['room']) : null;
//     requiredProjector = json['requiredProjector'];
//     requiredFacultyComputer = json['requiredFacultyComputer'];
//     label = json['label'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (timeSlot != null) {
//       data['timeSlot'] = timeSlot!.toJson();
//     }
//     if (room != null) {
//       data['room'] = room!.toJson();
//     }
//     data['requiredProjector'] = requiredProjector;
//     data['requiredFacultyComputer'] = requiredFacultyComputer;
//     data['label'] = label;
//     return data;
//   }
// }
//
// class TimeSlot {
//   String? id;
//   String? dayOfWeek;
//   String? startTime;
//   String? endTime;
//
//   TimeSlot({this.id, this.dayOfWeek, this.startTime, this.endTime});
//
//   TimeSlot.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     dayOfWeek = json['dayOfWeek'];
//     startTime = json['startTime'];
//     endTime = json['endTime'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['dayOfWeek'] = dayOfWeek;
//     data['startTime'] = startTime;
//     data['endTime'] = endTime;
//     return data;
//   }
// }
//
// class BuildingRoom {
//   String? id;
//   BuildingOfSeu? building;
//   int? floorNumber;
//   String? roomNumber;
//   String? roomCapacity;
//   String? examRoomCapacity;
//   DimensionInFeet? dimensionInFeet;
//   bool? hasProjector;
//   String? roomType;
//   String? name;
//   String? alternateName;
//
//   BuildingRoom(
//       {this.id,
//       this.building,
//       this.floorNumber,
//       this.roomNumber,
//       this.roomCapacity,
//       this.examRoomCapacity,
//       this.dimensionInFeet,
//       this.hasProjector,
//       this.roomType,
//       this.name,
//       this.alternateName});
//
//   BuildingRoom.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     building = json['building'] != null
//         ? BuildingOfSeu.fromJson(json['building'])
//         : null;
//     floorNumber = json['floorNumber'];
//     roomNumber = json['roomNumber'];
//     roomCapacity = json['roomCapacity'];
//     examRoomCapacity = json['examRoomCapacity'];
//     dimensionInFeet = json['dimensionInFeet'] != null
//         ? DimensionInFeet.fromJson(json['dimensionInFeet'])
//         : null;
//     hasProjector = json['hasProjector'];
//     roomType = json['roomType'];
//     name = json['name'];
//     alternateName = json['alternateName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (building != null) {
//       data['building'] = building!.toJson();
//     }
//     data['floorNumber'] = floorNumber;
//     data['roomNumber'] = roomNumber;
//     data['roomCapacity'] = roomCapacity;
//     data['examRoomCapacity'] = examRoomCapacity;
//     if (dimensionInFeet != null) {
//       data['dimensionInFeet'] = dimensionInFeet!.toJson();
//     }
//     data['hasProjector'] = hasProjector;
//     data['roomType'] = roomType;
//     data['name'] = name;
//     data['alternateName'] = alternateName;
//     return data;
//   }
// }
//
// class BuildingOfSeu {
//   String? id;
//   String? prefix;
//   String? name;
//   Address? address;
//   int? areaInSquareFeet;
//   int? floorCount;
//
//   BuildingOfSeu(
//       {this.id,
//       this.prefix,
//       this.name,
//       this.address,
//       this.areaInSquareFeet,
//       this.floorCount});
//
//   BuildingOfSeu.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     prefix = json['prefix'];
//     name = json['name'];
//     address =
//         json['address'] != null ? Address.fromJson(json['address']) : null;
//     areaInSquareFeet = json['areaInSquareFeet'];
//     floorCount = json['floorCount'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['prefix'] = prefix;
//     data['name'] = name;
//     if (address != null) {
//       data['address'] = address!.toJson();
//     }
//     data['areaInSquareFeet'] = areaInSquareFeet;
//     data['floorCount'] = floorCount;
//     return data;
//   }
// }
//
// class Address {
//   String? addressType;
//   String? streetAddress;
//   String? division;
//   String? district;
//   String? subDistrict;
//   String? policeStation;
//   String? postOffice;
//   String? postCode;
//   Country? country;
//   double? latitude;
//   double? longitude;
//
//   Address(
//       {this.addressType,
//       this.streetAddress,
//       this.division,
//       this.district,
//       this.subDistrict,
//       this.policeStation,
//       this.postOffice,
//       this.postCode,
//       this.country,
//       this.latitude,
//       this.longitude});
//
//   Address.fromJson(Map<String, dynamic> json) {
//     addressType = json['addressType'];
//     streetAddress = json['streetAddress'];
//     division = json['division'];
//     district = json['district'];
//     subDistrict = json['subDistrict'];
//     policeStation = json['policeStation'];
//     postOffice = json['postOffice'];
//     postCode = json['postCode'];
//     country =
//         json['country'] != null ? Country.fromJson(json['country']) : null;
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['addressType'] = addressType;
//     data['streetAddress'] = streetAddress;
//     data['division'] = division;
//     data['district'] = district;
//     data['subDistrict'] = subDistrict;
//     data['policeStation'] = policeStation;
//     data['postOffice'] = postOffice;
//     data['postCode'] = postCode;
//     if (country != null) {
//       data['country'] = country!.toJson();
//     }
//     data['latitude'] = latitude;
//     data['longitude'] = longitude;
//     return data;
//   }
// }
//
// class DimensionInFeet {
//   double? first;
//   double? second;
//
//   DimensionInFeet({this.first, this.second});
//
//   DimensionInFeet.fromJson(Map<String, dynamic> json) {
//     first = json['first'];
//     second = json['second'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['first'] = first;
//     data['second'] = second;
//     return data;
//   }
// }
