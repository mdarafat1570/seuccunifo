// import 'package:flutter/material.dart';
//
//
// import 'package:url_launcher/link.dart';
//
// class MyCard extends StatelessWidget {
//   const MyCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDark = CHelperFunctions.isDarkMode(context);
//
//     return Column(
//       children: [
//         SizedBox(
//           width: double.infinity,
//           child: Card(
//             borderOnForeground: true,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       const CircleAvatar(
//                         backgroundColor: Colors.teal,
//                         radius: 20,
//                         child: CircleAvatar(
//                           backgroundImage:
//                               AssetImage(CImages.me), //NetworkImage
//                           radius: 20,
//                         ),
//                       ),
//                       const SizedBox(width: PDFSpacing.spaceBtwSection),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Azizul Hakim",
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                           Text(
//                             "Mobile App Developer",
//                             style: Theme.of(context).textTheme.labelSmall,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: CSizes.spaceBtwInputFields - 4),
//                   Text(
//                     "Assalamu Alaikum. If you face any bug or error kindly inform me.",
//                     style: Theme.of(context).textTheme.labelLarge,
//                   ),
//                   const SizedBox(height: CSizes.spaceBtwInputFields - 4),
//                   Row(
//                     children: [
//                       Link(
//                         uri: Uri.parse('azizulhakimfayaz@gmail.com'),
//                         builder: (context, followLink) => InkWell(
//                           onTap: followLink,
//                           child: SizedBox(
//                             height: CSizes.iconMd - 2,
//                             child: Image.asset(
//                               CImages.emailLogo,
//                               color: isDark ? Colors.white : null,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Link(
//                         uri: Uri.parse('https://www.linkedin.com/in//'),
//                         builder: (context, followLink) => InkWell(
//                           onTap: followLink,
//                           child: SizedBox(
//                               height: CSizes.iconMd,
//                               child: Image.asset(
//                                 CImages.linkedinLogo,
//                                 color: isDark ? Colors.white : null,
//                               )),
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Link(
//                         uri: Uri.parse('https://github.com/'),
//                         builder: (context, followLink) => InkWell(
//                           onTap: followLink,
//                           child: SizedBox(
//                             height: CSizes.iconMd - 4,
//                             child: Image.asset(
//                               CImages.githubLogo,
//                               color: isDark ? Colors.white : null,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Link(
//                         uri: Uri.parse('http://t.me/'),
//                         builder: (context, followLink) => InkWell(
//                           onTap: followLink,
//                           child: SizedBox(
//                             height: CSizes.iconMd - 4,
//                             child: Image.asset(
//                               CImages.telegramLogo,
//                               color: isDark ? Colors.white : null,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
