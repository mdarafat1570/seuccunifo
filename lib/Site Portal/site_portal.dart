// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import '../base/connection_lost_screen.dart';
//
// class SitePortal extends StatefulWidget {
//   const SitePortal({super.key});
//
//   @override
//   _SitePortalState createState() => _SitePortalState();
// }
//
// class _SitePortalState extends State<SitePortal> {
//   bool _isLoading = true;
//   bool _isConnected = true;
//   late Connectivity _connectivity;
//
//   @override
//   void initState() {
//     super.initState();
//     WebView.platform = SurfaceAndroidWebView();
//     _connectivity = Connectivity();
//     _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
//       setState(() {
//         _isConnected = result != ConnectivityResult.none;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           "Club Website",
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         actions: [
//           Image.asset(
//             "assets/seucc.png",
//             width: 40,
//             height: 40,
//           ),
//           const SizedBox(
//             width: 15,
//           )
//         ],
//         centerTitle: true,
//       ),
//       body: _isConnected
//           ? Stack(
//         children: [
//           WebView(
//             initialUrl:
//             'https://www.seucomputerclub.org/',
//             javascriptMode: JavascriptMode.unrestricted,
//             onPageFinished: (String url) {
//               setState(() {
//                 _isLoading = false;
//               });
//             },
//           ),
//           if (_isLoading)
//             const LinearProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//               backgroundColor: Colors.transparent,
//             ),
//         ],
//       )
//           : const ConnectionLostScreen(),
//     );
//   }
// }
