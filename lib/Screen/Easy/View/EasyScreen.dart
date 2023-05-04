import 'package:flutter/material.dart';
import 'package:game_drag_drop/Screen/Easy/Controllor/EasyControllor.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EasyScreen extends StatefulWidget {
  const EasyScreen({Key? key}) : super(key: key);

  @override
  State<EasyScreen> createState() => _EasyScreenState();
}

class _EasyScreenState extends State<EasyScreen>
    with SingleTickerProviderStateMixin {
  EasyControllor homeControllor = Get.put(
    EasyControllor(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 500,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 8000,
                        percent: 1,
                        onAnimationEnd: () {

                          if (homeControllor.isChack1 == true &&
                              homeControllor.isChack2 == true &&
                              homeControllor.isChack3 == true &&
                              homeControllor.isChack4 == true) {
                            // Get.defaultDialog(
                            //   title: "Game Over",
                            //   confirm: ElevatedButton(
                            //     onPressed: () {
                            //       print("------------------------------------------------------------------");
                            //       Navigator.pop(context);
                            //     },
                            //     child: Text(
                            //       "Next",
                            //     ),
                            //   ),
                            // );
                            Get.defaultDialog(
                              title: "Hello",
                              confirm: ElevatedButton(
                                onPressed: () {

                                },
                                child: Text("Next",),
                              ),
                              cancel: ElevatedButton(
                                onPressed: () {
                                  Get.toNamed('easy');
                                },
                                child: Text("Restart",),
                              ),
                            );
                          }
                        },
                        progressColor: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homeControllor.isChack1 == false
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
                                child: homeControllor.isChack1.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/A.png",
                                      ),
                              ),
                            )
                          : Container(),
                      homeControllor.isChack2 == false
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
                                child: homeControllor.isChack2.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/B.png",
                                      ),
                              ),
                            )
                          : Container(),
                      homeControllor.isChack3 == false
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
                                child: homeControllor.isChack3.value == true
                                    ? Container()
                                    : Image.asset(
                                        "Assets/Images/C.png",
                                      ),
                              ),
                            )
                          : Container(),
                      homeControllor.isChack4 == false
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
                                child: homeControllor.isChack4.value == true
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
                            homeControllor.isChack2.value = true;
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
                            homeControllor.isChack3.value = true;
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
                            homeControllor.isChack4.value = true;
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
                            homeControllor.isChack1.value = true;
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
          ],
        ),
      ),
    );
  }
}
