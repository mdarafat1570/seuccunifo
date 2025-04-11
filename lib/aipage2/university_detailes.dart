// import 'dart:convert';
// import 'dart:io';
// import 'dart:math'; // Import for random selection
//
// import 'package:chatview/chatview.dart';
// import 'package:dash_chat_2/dash_chat_2.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as htpp;
// import 'package:image_picker/image_picker.dart';
//
// import 'custom_knowledge.dart'; // Import custom knowledge
//
// class ChatBotPage3 extends StatefulWidget {
//   const ChatBotPage3({super.key});
//
//   @override
//   State<ChatBotPage3> createState() => _ChatbotState();
// }
//
// class _ChatbotState extends State<ChatBotPage3> {
//   ChatUser myself = ChatUser(id: '1', name: 'user');
//   ChatUser bot =
//   ChatUser(id: '2', name: 'seu', profilePhoto: 'assets/logo.png');
//
//   List<ChatMessage> allmessages = [];
//   List<ChatUser> typing = [];
//
//   // Ensure the API key is set correctly
//   final String apiKey =
//       Platform.environment['AIzaSyBb8fOVkiPz3oB5un8oRrGNxX3iRBdyvMI'] ??
//           'AIzaSyBb8fOVkiPz3oB5un8oRrGNxX3iRBdyvMI';
//   final String model =
//       'gemini-2.0-flash-exp'; // You can change to another model if needed
//
//   // Generate prompt with custom knowledge
//   String _generateCustomKnowledgePrompt(String userMessage) {
//     String prompt =
//         "Below is a set of knowledge. Please use it to answer the user's question accurately.\n";
//
//     // Append custom knowledge to the prompt
//     for (var item in CustomKnowledge.knowledge) {
//       item.forEach((key, value) {
//         prompt += "Q: $key\nA: ${CustomKnowledge.getRandomAnswer(value)}\n\n";
//       });
//     }
//
//     // Add the user's message as the question to answer
//     prompt += "Q: $userMessage\nA:";
//
//     return prompt;
//   }
//
//   // Handle sending data and interacting with API
//   getdata(ChatMessage m) async {
//     typing.add(bot);
//     allmessages.insert(0, m);
//     setState(() {});
//
//     // Generate the prompt with custom knowledge
//     String prompt = _generateCustomKnowledgePrompt(m.text);
//
//     // Send the message to the Gemini API with the custom knowledge as part of the prompt
//     await _sendToGeminiAPI(prompt);
//
//     typing.remove(bot);
//     setState(() {});
//   }
//
//   // Send the generated prompt with custom knowledge to the Gemini API
//   _sendToGeminiAPI(String prompt) async {
//     final data = {
//       "contents": [
//         {
//           "parts": [
//             {"text": prompt}
//           ]
//         }
//       ]
//     };
//
//     final url =
//         'https://generativelanguage.googleapis.com/v1beta/models/$model:generateContent?key=$apiKey';
//     final header = {'Content-Type': 'application/json'};
//
//     try {
//       final response = await htpp.post(
//         Uri.parse(url),
//         headers: header,
//         body: jsonEncode(data),
//       );
//
//       if (response.statusCode == 200) {
//         var result = jsonDecode(response.body);
//         var reply = result['candidates'][0]['content']['parts'][0]['text'];
//         print('API Response: $reply');
//
//         _sendBotReply(reply);
//       } else {
//         print(
//             'Error occurred: ${response.statusCode}, Response Body: ${response.body}');
//       }
//     } catch (e) {
//       print('Error occurred: $e');
//     }
//   }
//
//   // Send the bot's reply to the chat
//   _sendBotReply(String reply) {
//     ChatMessage m1 = ChatMessage(
//       text: reply,
//       user: bot,
//       createdAt: DateTime.now(),
//     );
//     allmessages.insert(0, m1);
//     setState(() {});
//   }
//
//   // Method to pick and send an image message
//   void _sendMessageMedia() async {
//     ImagePicker picker = ImagePicker();
//     XFile? file = await picker.pickImage(source: ImageSource.gallery);
//
//     if (file != null) {
//       // Creating a chat message for the image
//       ChatMessage chatMessage = ChatMessage(
//         user: myself,
//         createdAt: DateTime.now(),
//         text: "Describe this picture", // You can modify this text as needed
//         medias: [
//           ChatMedia(url: file.path, fileName: file.name, type: MediaType.image)
//         ], // Adjust for correct MediaType
//       );
//
//       // Add the media message to the chat
//       setState(() {
//         allmessages.insert(0,
//             chatMessage); // Add the image message to the beginning of the list
//       });
//
//       // Optionally, you can send this image to the backend for processing (e.g., to Gemini AI)
//       // await processImage(file.path);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           "University Informetion",
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(bottom: 25.0),
//         child: DashChat(
//           inputOptions: InputOptions(
//             trailing: [
//               IconButton(
//                   onPressed: _sendMessageMedia, icon: const Icon(Icons.image))
//             ],
//           ),
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
