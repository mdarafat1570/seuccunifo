import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../dashboard/home_page.dart';


Widget courseWidget({
  required imagePath,
  required courseName,
}) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 187, 243, 237),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(courseName),
            ],
          ),
        ),
      ),
      Container(
        height: 115,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            imageUrl: imagePath,
            fit: BoxFit.fill,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    ],
  );
}

List<CouseModel> courses = [
  CouseModel(
      imagePath: "https://i.ibb.co/2g4T4g4/Whats-App3.jpg",
      name: "Admissions for Full",
      rating: "4.2"),
  CouseModel(
      imagePath: "https://i.ibb.co/0QBvgLs/Whats-App2.jpg",
      name: "7th Convocation 2020",
      rating: "4.2"),
  CouseModel(
      imagePath: "https://i.ibb.co/ckpGvPq/Whats-App1.jpg",
      name: "8th Convocation 2024",
      rating: "4.1"),
];
