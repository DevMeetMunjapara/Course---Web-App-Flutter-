import 'package:admin/AppComponet/colors.dart';
import 'package:admin/AppComponet/img.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavbar(),
      desktop: DesktopNevbar(),
    );
  }

  Widget MobileNavbar() {
    return SizedBox();
  }

  Widget DesktopNevbar() {
    return Container(
      padding: EdgeInsets.all(200),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Practice Advice",
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Get Quality Education",
            style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Problems trying to resolve the conflict between \nthe two major realms of Classical physics: Newtonian mechanics ",
            style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              box(
                  "Lifetime access",
                  "The gradualaccumulation of\ninformation about ",
                  AppImage.lifeTime),
              box(
                  "Lifetime access",
                  "The gradual accumulation of \n,information about",
                  AppImage.book),
              box(
                  "Training Courses",
                  "The gradual accumulation of\ninformation about  ",
                  AppImage.training),
            ],
          )
        ],
      ),
    );
  }

  Widget box(String title, String descrepition, String img) {
    return Material(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppImage.lifeTime),
              SizedBox(
                height: 30,
              ),
              Text(
                "Lifetime access",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The gradualaccumulation of\ninformation about ",
                style: TextStyle(
                    color: Color.fromARGB(183, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
