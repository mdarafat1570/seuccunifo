import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showCustomAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieAssetWidget(),
            SizedBox(height: 20),
            Text(
              'We are working hard to bring something amazing.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

class LottieAssetWidget extends StatelessWidget {
  const LottieAssetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/coming_soon.json',
      width: 250,
      height: 180,
      fit: BoxFit.contain,
      repeat: true,
      onLoaded: (composition) {},
    );
  }
}
