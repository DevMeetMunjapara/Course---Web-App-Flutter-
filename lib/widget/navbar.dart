import 'package:admin/AppComponet/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavbar(),
      desktop: DesktopNevbar(),
    );
  }
//========= Mobile ================

  Widget MobileNavbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70.h,
      child: Row(
        children: [
          InkWell(child: Icon(Icons.menu)),
          SizedBox(
            width: 20.w,
          ),
          LogoText()
        ],
      ),
    );
  }

//========= Web ================

  Widget DesktopNevbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
          ),
          LogoText(),
          SizedBox(
            width: 50.w,
          ),
          Expanded(
            child: Row(
              children: [
                navButton("Home"),
                navButton("Product"),
                navButton("Pricing"),
                navButton("Contact"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 20.w,
                ),
                SizedBox(
                  height: 40.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Join US ",
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
        ],
      ),
    );
  }

// Costom Code
  Widget navButton(String title) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.navbarText,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget LogoText() {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Brandname",
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
