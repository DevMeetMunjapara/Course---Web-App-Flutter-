import 'package:admin/AppComponet/colors.dart';
import 'package:admin/AppComponet/img.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InteroPage extends StatefulWidget {
  const InteroPage({super.key});

  @override
  State<InteroPage> createState() => _InteroPageState();
}

class _InteroPageState extends State<InteroPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileIntro(),
      desktop: DesktopIntro(),
    );
  }

  Widget MobileIntro() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppImage.girl,
            height: 300,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best dental surgeons",
                  style: TextStyle(fontSize: 20, color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "25K+ STUDENTS\nTRUST US",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Our goal is to make online education work\nfor everyone",
                  style: TextStyle(
                      color: Color.fromARGB(255, 156, 156, 156), fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text(
                        "Get Quote Now",
                        style: TextStyle(color: AppColors.white),
                      )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text(
                        "Learn More",
                        style: TextStyle(color: AppColors.primaryColor),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget DesktopIntro() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Best dental surgeons",
                  style: TextStyle(fontSize: 30, color: AppColors.primaryColor),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "25K+ STUDENTS\nTRUST US",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Our goal is to make online education work\nfor everyone",
                  style: TextStyle(
                      color: Color.fromARGB(255, 156, 156, 156), fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 170,
                      child: Center(
                          child: Text(
                        "Get Quote Now",
                        style: TextStyle(fontSize: 20, color: AppColors.white),
                      )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 170,
                      child: Center(
                          child: Text(
                        "Learn More",
                        style: TextStyle(
                            fontSize: 20, color: AppColors.primaryColor),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image.asset(
              AppImage.girl,
              height: 550,
            ),
          )
        ],
      ),
    );
  }
}
