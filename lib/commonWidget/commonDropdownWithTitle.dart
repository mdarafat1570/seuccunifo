import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../base/AppColour.dart';


Widget commonDropdownWithTitle({
  required String title,
  required bool isRequired,
  required String selectedValue,
  required List<String> menuEntries,
  required Function(String?) onSelected,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              title,
              style: GoogleFonts.openSans(
                fontSize: 12,
                letterSpacing: 0.5,
                color: AppColor.textThemeColor,
              ),
            ),
          ),
          if (isRequired)
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Text(
                "*",
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  letterSpacing: 0.5,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      DropdownMenu<String>(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          constraints: BoxConstraints.expand(
            height: 35,
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1.2,
              color: Color.fromARGB(255, 198, 204, 215),
            ),
          ),
        ),
        initialSelection: selectedValue,
        onSelected: (String? value) {
          onSelected(value);
        },
        menuStyle: MenuStyle(
          surfaceTintColor: WidgetStateProperty.all<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        textStyle: const TextStyle(
          color: AppColor.textThemeColor,
          fontSize: 12,
        ),
        dropdownMenuEntries: menuEntries.map<DropdownMenuEntry<String>>(
              (String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
            );
          },
        ).toList(),
      ),
    ],
  );
}
