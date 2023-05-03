import 'package:flutter/material.dart';
import 'package:game_drag_drop/Screen/Home/Controllor/HomeControllor.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  bool ischack = false;
  bool ischack1 = false;
  bool ischack2 = false;

  HomeControllor homeControllor = Get.put(
    HomeControllor(),
  );
  AnimationController? animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 5));
    animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Draggable(
                      data: 'A',
                      feedback: Image.asset(
                        "Assets/Images/A.png",
                      ),
                      child: homeControllor.isChack1.value == true
                          ? Container()
                          : Image.asset(
                              "Assets/Images/A.png",
                            ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: Draggable(
                      data: 'B',
                      feedback: Image.asset(
                        "Assets/Images/B.png",
                      ),
                      child: homeControllor.isChack2.value == true
                          ? Container()
                          : Image.asset(
                              "Assets/Images/B.png",
                            ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: Draggable(
                      data: 'C',
                      feedback: Image.asset(
                        "Assets/Images/C.png",
                      ),
                      child: homeControllor.isChack3.value == true
                          ? Container()
                          : Image.asset(
                              "Assets/Images/C.png",
                            ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: Draggable(
                      data: 'D',
                      feedback: Image.asset(
                        "Assets/Images/D.png",
                      ),
                      child: homeControllor.isChack4.value == true
                          ? Container()
                          : Image.asset(
                              "Assets/Images/D.png",
                            ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == 'B';
                      },
                      onAccept: (data) {
                        setState(() {
                          homeControllor.isChack2.value = true;
                        });
                      },
                      builder: (context, candidateData, rejectedData) {
                        return homeControllor.isChack2.value == false
                            ? Image.asset(
                                "Assets/Images/B.png",
                                color: Colors.grey,
                              )
                            : Image.asset(
                                "Assets/Images/B.png",
                              );
                      },
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == 'C';
                      },
                      onAccept: (data) {
                        setState(() {
                          homeControllor.isChack3.value = true;
                        });
                      },
                      builder: (context, candidateData, rejectedData) {
                        return homeControllor.isChack3.value == false
                            ? Image.asset(
                                "Assets/Images/C.png",
                                color: Colors.grey,
                              )
                            : Image.asset(
                                "Assets/Images/C.png",
                              );
                      },
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == 'D';
                      },
                      onAccept: (data) {
                        setState(() {
                          homeControllor.isChack4.value = true;
                        });
                      },
                      builder: (context, candidateData, rejectedData) {
                        return homeControllor.isChack4.value == false
                            ? Image.asset(
                                "Assets/Images/D.png",
                                color: Colors.grey,
                              )
                            : Image.asset(
                                "Assets/Images/D.png",
                              );
                      },
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: DragTarget(
                      onWillAccept: (data) {
                        return data == 'A';
                      },
                      onAccept: (data) {
                        setState(() {
                          homeControllor.isChack1.value = true;
                        });
                      },
                      builder: (context, candidateData, rejectedData) {
                        return homeControllor.isChack1.value == false
                            ? Image.asset(
                                "Assets/Images/A.png",
                                color: Colors.grey,
                              )
                            : Image.asset(
                                "Assets/Images/A.png",
                              );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
