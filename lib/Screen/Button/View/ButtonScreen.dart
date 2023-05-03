import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('easy');
              },
              child: Text(
                "Easy",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
