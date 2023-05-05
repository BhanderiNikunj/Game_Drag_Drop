import 'package:flutter/material.dart';

class MediumScreen extends StatefulWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  State<MediumScreen> createState() => _MediumScreenState();
}

class _MediumScreenState extends State<MediumScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Draggable(
                  feedback: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text("2"),
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text("2"),
                  ),
                ),
                Draggable(
                  feedback: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text("2"),
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text("2"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
