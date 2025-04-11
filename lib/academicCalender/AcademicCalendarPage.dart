import 'package:flutter/material.dart';

class AcademicCalendarPage extends StatelessWidget {
  final Map<String, List<Map<String, String>>> calendarData = {
    "Spring 2025": [
      {"Jan 06 - 09": "Pre-registration for Spring 2025"},
      {"Feb 03": "Holiday (Sharaswati Puja) *"},
      {"Feb 09": "Registration begins for Spring 2025"},
      {"Feb 15": "Holiday (Shab-e-Barat) *"},
      {"Feb 19 - 20": "Orientation of newly admitted students"},
      {"Feb 20": "Registration ends"},
      {"Feb 21": "Holiday (Shaheed Dibash & International Mother Language Day)"},
      {"Feb 23": "Classes begin"},
      {"Feb 27": "Last date for Course ADD/DROP"},
      {"March 03": "Last date for payment of 1st installment (40%) without late fee"},
      {"March 10": "Last date for payment of 1st installment (40%) with late fee"},
      {"March 17": "Last date of Semester drop with full adjustment"},
      {"March 20": "Last date of Semester drop with 50% adjustment"},
      {"March 24": "Last date for payment of 2nd installment (30%)"},
      {"March 25": "Last date of Self-issuance of Admit Card for Midterm Examination"},
      {"March 26": "Holiday (Independence Day)"},
      {"March 27 - April 06": "Holiday (Jummatul Bida, Lailatul Qadr & Eid-ul-Fitr)*"},
      {"April 14": "Holiday (Bangla Nababorsho) *"},
      {"April 15 - 21": "Midterm Examination"},
      {"May 01": "Holiday (May Day)"},
      {"May 04": "Course Offering for Summer 2025 uploaded"},
      {"May 07": "Last date of Withdrawal with “W” Grade without adjustment"},
      {"May 11": "Holyday (Budha Purnima)"},
      {"May 12 - 15": "Pre-registration for Summer 2025"},
      {"May 21 - 23": "Teaching Evaluation"},
      {"May 31": "Last Date of Classes (UG-Diploma & Master’s)"},
      {"June 01": "Last date for payment of Final installment (30%)"},
      {"June 03": "Last date of Self-issuance of Admit card for Final Examination"},
      {"June 04": "Last Date of Classes (UG-Regular)"},
      {"June 05 - 14": "Holiday (Eid-Ul-Azha) *"},
      {"June 16 - 22": "Final Examination"},
      {"June 23": "Last date of Grade Submission"},
      {"June 24": "Announcement of Exam Results"},
    ],
    "Summer 2025": [
      {"May 12 - 15": "Pre-registration for Summer 2025"},
      {"June 25": "Registration begins for Summer 2025"},
      {"July 02 - 03": "Orientation of newly admitted students"},
      {"July 03": "Registration ends"},
      {"July 06": "Holiday (Ashura) *"},
      {"July 07": "Classes begin"},
      {"July 10": "Last date for Course ADD/DROP"},
      {"July 15": "Last date for payment of 1st installment (40%) without late fee"},
      {"July 20": "Last date for payment of 1st installment (40%) with late fee"},
      {"July 22": "Last date of Semester drop with full adjustment"},
      {"July 28": "Last date of Semester drop with 50% adjustment"},
      {"Aug 13": "Last date for payment of 2nd installment (30%)"},
      {"Aug 14": "Last date of Self-Issuance of Admit Card for Midterm Examination"},
      {"Aug 15 - 22": "Midterm Examination"},
      {"Aug 16": "Holiday (Janmashtami) *"},
      {"Aug 25": "Course offering for Fall 2025 uploaded"},
      {"Aug 28": "Last date of withdrawal with “W” Grade without adjustment"},
      {"Sept 03 - 10": "Pre-registration for Fall 2025"},
      {"Sept 05": "Holiday (Eid-e-Miladun-Nabi) *"},
      {"Sept 16 - 18": "Teaching Evaluation"},
      {"Sept 30": "Last Date of Classes (UG-Regular)"},
      {"Oct 01 - 02": "Holiday (Durga Puja) *"},
      {"Oct 05": "Last date for payment of final installment (30%)"},
      {"Oct 05": "Last date of Self-Issuance of Admit Card for Final Examination"},
      {"Oct 05": "Last Date of Classes (UG-Diploma & Master’s)"},
      {"Oct 06 - 12": "Final Examination"},
      {"Oct 13": "Last date of Grade submission"},
      {"Oct 14": "Announcement of Exam results"},
    ],
    "Fall 2025": [
      {"Sept 03 - 10": "Pre-registration for Fall 2025"},
      {"Oct 15": "Registration begins for Fall 2025"},
      {"Oct 22 - 23": "Orientation of newly admitted students"},
      {"Oct 23": "Registration ends"},
      {"Oct 26": "Classes begin"},
      {"Nov 04": "Last date for Course ADD/ DROP"},
      {"Nov 06": "Last date for payment of 1st installment (40%) without late fee"},
      {"Nov 10": "Last date for payment of 1st installment (40%) with late fee"},
      {"Nov 13": "Last day of Semester drop with full adjustment"},
      {"Nov 20": "Last day of Semester drop with 50% adjustment"},
      {"Dec 02": "Last date for payment of 2nd installment (30%)"},
      {"Dec 04": "Last date of Self-Issuance of Admit Card for Midterm Examination"},
      {"Dec 07 - 13": "Midterm Examination"},
      {"Dec 15": "Course offering for Spring 2026 uploaded"},
      {"Dec 16": "Holiday (Victory Day)"},
      {"Dec 21": "Last date of withdrawal with “W” without adjustment"},
      {"Dec 25": "Holiday (Christmas Day)"},
      {"Dec 28 - 31": "Pre-registration for Spring Semester 2026"},
      {"Jan 11 - 15, 2026": "Teaching Evaluation"},
      {"Jan 21, 2026": "Last date for payment of final installment (30%)"},
      {"Jan 22, 2026": "Last date of Self-issuance of Admit card for Final Examination"},
      {"Jan 22, 2026": "Last Date of Classes (UG-Regular)"},
      {"Jan 23, 2026": "Holiday (Sharaswati Puja) *"},
      {"Jan 24, 2026": "Last Date of Classes (UG-Diploma & Master’s)"},
      {"Jan 25 - 31, 2026": "Final Examination"},
      {"Feb 02, 2026": "Last date of Grade Submission"},
      {"Feb 03, 2026": "Announcement of Exam Result"},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Academic Calendar")),
      body: ListView.builder(
        itemCount: calendarData.length,
        itemBuilder: (context, index) {
          String semester = calendarData.keys.elementAt(index);
          List<Map<String, String>> events = calendarData[semester]!;

          return ExpansionTile(
            title: Text(semester, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            children: events
                .map((event) => ListTile(
              title: Text(event.keys.first),
              subtitle: Text(event.values.first),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}
