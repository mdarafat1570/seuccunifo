import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


import '../base/AppColour.dart';

Widget customText(String text,
    {Color color = AppColor.textThemeColor, double size = 14}) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      letterSpacing: 0.5,
      color: color,
      fontSize: size,
    ),
  );
}

Widget customTextBold(String text,
    {Color color = AppColor.textThemeColor, double size = 14}) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      letterSpacing: 0.5,
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget commonTextfield(
    int numberOfLine,
    TextEditingController controller, {
      double? width,
      bool isTextFieldEnable = true,
    }) {
  return SizedBox(
    width: width ?? double.infinity, // Default to fill parent if width is null
    child: TextField(
      maxLines: numberOfLine,
      controller: controller,
      enabled: isTextFieldEnable,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(
            RegExp(r'^\d*\.?\d*')), // Allows decimals
      ],
      decoration: InputDecoration(
        isCollapsed: false, // Ensure proper spacing
        contentPadding:
        const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1, color: AppColor.primaryColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              width: 1, color: Color.fromARGB(255, 213, 213, 213)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              width: 1, color: Color.fromARGB(255, 158, 210, 253)),
        ),
        hintText: 'Enter value', // Optional: Add hint text
      ),
    ),
  );
}

Widget commonTextfieldCover(int numberOfLine, TextEditingController controller,
    {String? labelText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: null,
        child: TextField(
          maxLines: numberOfLine,
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            isCollapsed: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(width: 1, color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
            ),
          ),
        ),
      ),
    ],
  );
}
