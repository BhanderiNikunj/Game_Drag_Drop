import 'package:flutter/material.dart';
import 'package:game_drag_drop/Screen/EasyMode/Easy1/Controllor/Easy1Controllor.dart';
import 'package:get/get.dart';

class Easy1Screen extends StatefulWidget {
  const Easy1Screen({Key? key}) : super(key: key);

  @override
  State<Easy1Screen> createState() => _Easy1ScreenState();
}

class _Easy1ScreenState extends State<Easy1Screen>
    with SingleTickerProviderStateMixin {
  Easy1Controllor easy1controllor = Get.put(
    Easy1Controllor(),
  );
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "Assets/Images/BackGround.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     LinearPercentIndicator(
                  //       width: MediaQuery.of(context).size.width - 500,
                  //       animation: true,
                  //       lineHeight: 20.0,
                  //       animationDuration: 8000,
                  //       percent: 1,
                  //       onAnimationEnd: () {
                  //         if (easy1controllor.isChack1 == true &&
                  //             easy1controllor.isChack2 == true &&
                  //             easy1controllor.isChack3 == true &&
                  //             easy1controllor.isChack4 == true) {
                  //           Get.defaultDialog(
                  //             title: "Hello",
                  //             confirm: ElevatedButton(
                  //               onPressed: () {},
                  //               child: Text(
                  //                 "Next",
                  //               ),
                  //             ),
                  //             cancel: ElevatedButton(
                  //               onPressed: () {
                  //                 Get.back();
                  //                 easy1controllor.isChack1.value = false;
                  //                 easy1controllor.isChack2.value = false;
                  //                 easy1controllor.isChack3.value = false;
                  //                 easy1controllor.isChack4.value = false;
                  //               },
                  //               child: Text(
                  //                 "Restart",
                  //               ),
                  //             ),
                  //           );
                  //         }
                  //       },
                  //       progressColor: Colors.white,
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      easy1controllor.isChack1 == false
                          ? Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Draggable(
                                data: 'A',
                                feedback: Image.asset(
                                  "Assets/Images/A.png",
                                ),
                                child: easy1controllor.isChack1.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/A.png",
                                      ),
                              ),
                            )
                          : Container(),
                      easy1controllor.isChack2 == false
                          ? Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Draggable(
                                data: 'B',
                                feedback: Image.asset(
                                  "Assets/Images/B.png",
                                ),
                                child: easy1controllor.isChack2.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/B.png",
                                      ),
                              ),
                            )
                          : Container(),
                      easy1controllor.isChack3 == false
                          ? Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Draggable(
                                data: 'C',
                                feedback: Image.asset(
                                  "Assets/Images/C.png",
                                ),
                                child: easy1controllor.isChack3.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/C.png",
                                      ),
                              ),
                            )
                          : Container(),
                      easy1controllor.isChack4 == false
                          ? Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Draggable(
                                data: 'D',
                                feedback: Image.asset(
                                  "Assets/Images/D.png",
                                ),
                                child: easy1controllor.isChack4.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/D.png",
                                      ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: DragTarget(
                          onWillAccept: (data) {
                            return data == 'B';
                          },
                          onAccept: (data) {
                            easy1controllor.isChack2.value = true;
                          },
                          builder: (context, candidateData, rejectedData) {
                            return easy1controllor.isChack2.value == false
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
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: DragTarget(
                          onWillAccept: (data) {
                            return data == 'C';
                          },
                          onAccept: (data) {
                            easy1controllor.isChack3.value = true;
                          },
                          builder: (context, candidateData, rejectedData) {
                            return easy1controllor.isChack3.value == false
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
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: DragTarget(
                          onWillAccept: (data) {
                            return data == 'D';
                          },
                          onAccept: (data) {
                            easy1controllor.isChack4.value = true;
                          },
                          builder: (context, candidateData, rejectedData) {
                            return easy1controllor.isChack4.value == false
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
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: DragTarget(
                          onWillAccept: (data) {
                            return data == 'A';
                          },
                          onAccept: (data) {
                            easy1controllor.isChack1.value = true;
                          },
                          builder: (context, candidateData, rejectedData) {
                            return easy1controllor.isChack1.value == false
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
          ],
        ),
      ),
    );
  }
}
