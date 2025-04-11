import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../base/AppColour.dart';


enum SampleItem { itemOne, itemTwo, itemThree }

Widget courserow(String courseCode, String courseTitle, String credits,
    String courseType, String CoursePrototype, String Semester,
    {required VoidCallback onDetailsClick}) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      courseTitle,
                      style: GoogleFonts.openSans(letterSpacing: .5)
                          .copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 78, 100, 144)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Course Code : ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Expanded(
                          child: Text(
                            courseCode,
                            style: GoogleFonts.openSans(letterSpacing: .5)
                                .copyWith(fontSize: 12, color: AppColor.primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Course Prototype : ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          CoursePrototype,
                          style: GoogleFonts.openSans(letterSpacing: .5)
                              .copyWith(fontSize: 12, color: AppColor.primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Credits : ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          credits,
                          style: GoogleFonts.openSans(letterSpacing: .5)
                              .copyWith(fontSize: 12, color: AppColor.primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 1),
                          decoration: BoxDecoration(
                            color: (Semester == Semester) ? Colors.green : Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            Semester,
                            style: const TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      courseType,
                      style: GoogleFonts.openSans(letterSpacing: .5)
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 14, color: AppColor.primaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: onDetailsClick,
                      child: const Icon(
                        FontAwesomeIcons.circleInfo,
                        size: 16,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            )
          ],
        ),
        const Divider(
          color: Color.fromARGB(255, 226, 226, 226),
        )
      ],
    ),
  );
}
