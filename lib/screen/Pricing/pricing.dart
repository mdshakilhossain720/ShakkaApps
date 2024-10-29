import 'package:flutter/material.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "The best work solution for best price",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 345,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xffFF27E9),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Starter pack",
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          ResuableContainer(
                            title: '1:',
                            titleTwo: '20 Students',
                          ),
                          SizedBox(height: 2),
                          ResuableContainer(
                            title: '2:',
                            titleTwo: '20 Teachers',
                          ),
                          SizedBox(height: 2),
                          ResuableContainer(
                            title: '3:',
                            titleTwo: '10 SMS',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 46,
                            width: 256,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffC413CB)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 140,
                      top: -30,
                      child: Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff9E06B7),
                              width: 2,
                            ),
                            color: Colors.white),
                        child: Text(
                          "Free",
                          style: TextStyle(
                            fontSize: 35,
                            color: Color(0xff9D06B7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 100,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 345,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xffFF27E9),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Starter pack",
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          ResuableContainer(
                            title: '1:',
                            titleTwo: '20 Students',
                          ),
                          SizedBox(height: 2),
                          ResuableContainer(
                            title: '2:',
                            titleTwo: '20 Teachers',
                          ),
                          SizedBox(height: 2),
                          ResuableContainer(
                            title: '3:',
                            titleTwo: '10 SMS',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 46,
                            width: 256,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffC413CB)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 100,
                      top: -90,
                      child: Container(
                       // alignment: Alignment.center,
                        height: 149,
                        width: 149,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff9E06B7),
                              width: 2,
                            ),
                            color: Colors.white),
                        child: Text(
                          "2500/BDT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            color: Color(0xff9D06B7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResuableContainer extends StatelessWidget {
  const ResuableContainer({
    super.key,
    required this.title,
    required this.titleTwo,
  });

  final String title;
  final String titleTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text(
          titleTwo,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 22, color: Colors.white),
        ),
      ],
    );
  }
}
