import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ClassRoomWebViewPage extends StatefulWidget {
  const ClassRoomWebViewPage({super.key});

  @override
  State<ClassRoomWebViewPage> createState() => _ClassRoomWebViewPageState();
}

class _ClassRoomWebViewPageState extends State<ClassRoomWebViewPage> {
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _hasInternet = true;
  late StreamSubscription _connectionSubscription;

  @override
  void initState() {
    super.initState();
    _checkConnection();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (_) => setState(() => _isLoading = true),
        onPageFinished: (_) => setState(() => _isLoading = false),
        onWebResourceError: (_) => setState(() => _hasInternet = true),
      ))
      ..loadRequest(Uri.parse("https://classroom.google.com"));

    _connectionSubscription =
        Connectivity().onConnectivityChanged.listen((result) {
          setState(() => _hasInternet = result != ConnectivityResult.none);
          if (_hasInternet) {
            _controller.reload();
          }
        });
  }

  void _checkConnection() async {
    final result = await Connectivity().checkConnectivity();
    setState(() {
      _hasInternet = result != ConnectivityResult.none;
    });
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: _hasInternet
          ? Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading)
            const Center(child: CircularProgressIndicator()),
        ],
      )
          : const NoInternetView(),
    );
  }
}

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wifi_off, color: Colors.grey, size: 100),
          const SizedBox(height: 20),
          const Text(
            "No Internet Connection",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const ClassRoomWebViewPage()),
            ),
            child: const Text("Retry"),
          )
        ],
      ),
    );
  }
}
