// import 'package:chatview/chatview.dart';
// import 'package:flutter/material.dart';
// import 'package:dash_chat_2/dash_chat_2.dart';
// import 'package:http/http.dart' as htpp;
// import 'package:image_picker/image_picker.dart';
// import 'dart:convert';
//
// class ChatBotPage extends StatefulWidget {
//   const ChatBotPage({super.key});
//
//   @override
//   State<ChatBotPage> createState() => _ChatbotState();
// }
//
// class _ChatbotState extends State<ChatBotPage> {
//   ChatUser myself = ChatUser(id: '1', name: 'user');
//   ChatUser bot = ChatUser(id: '2', name: 'seu', profilePhoto: 'assets/logo.png');
//
//   List<ChatMessage> allmessages = [];
//   List<ChatUser> typing = [];
//
//
//   final String apiKey = 'AIzaSyBb8fOVkiPz3oB5un8oRrGNxX3iRBdyvMI';
//   final String model = 'gemini-2.0-flash-exp';
//
//   late String oururl;
//   final header = {'Content-Type': 'application/json'};
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Directly use the hardcoded values for the API URL
//     oururl = 'https://generativelanguage.googleapis.com/v1beta/models/$model:generateContent?key=$apiKey';
//   }
//
//   getdata(ChatMessage m) async {
//     typing.add(bot);
//     allmessages.insert(0, m);
//     setState(() {});
//
//     var data = {
//       "contents": [
//         {
//           "parts": [
//             {"text": m.text}
//           ]
//         }
//       ]
//     };
//
//     await htpp
//         .post(Uri.parse(oururl), headers: header, body: jsonEncode(data))
//         .then((value) {
//       if (value.statusCode == 200) {
//         var result = jsonDecode(value.body);
//         print(result['candidates'][0]['content']['parts'][0]['text']);
//
//         ChatMessage m1 = ChatMessage(
//             text: result['candidates'][0]['content']['parts'][0]['text'],
//             user: bot,
//             createdAt: DateTime.now());
//         allmessages.insert(0, m1);
//       } else {
//         print('error occurred');
//       }
//     }).catchError((e) {});
//     typing.remove(bot);
//     setState(() {});
//   }
//
//   void _sendMessageMedia() async {
//     ImagePicker picker = ImagePicker();
//     XFile? file = await picker.pickImage(source: ImageSource.gallery);
//     if (file != null) {
//       ChatMessage chatMessage = ChatMessage(
//           user: myself,
//           createdAt: DateTime.now(),
//           text: "Describe this picture",
//           medias: [
//             ChatMedia(url: file.path, fileName: "", type: MediaType.image)
//           ]);
//       // _sendMessageMedia(chatMessage);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           "Common information",
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(bottom: 25.0),
//         child: DashChat(
//           inputOptions: InputOptions(trailing: [
//             IconButton(
//                 onPressed: _sendMessageMedia, icon: const Icon(Icons.image))
//           ]),
//           typingUsers: typing,
//           currentUser: myself,
//           onSend: (ChatMessage m) {
//             getdata(m);
//           },
//           messages: allmessages,
//         ),
//       ),
//     );
//   }
// }
