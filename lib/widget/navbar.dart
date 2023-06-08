import 'package:admin/AppComponet/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      height: 70,
      child: Row(
        children: [
          InkWell(child: Icon(Icons.menu)),
          SizedBox(
            width: 20,
          ),
          LogoText()
        ],
      ),
    );
  }

//========= Web ================

  Widget DesktopNevbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 70,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          LogoText(),
          SizedBox(
            width: 50,
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
                          fontSize: 20,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
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
                                fontSize: 20,
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
            width: 40,
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
              fontSize: 20,
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
              fontSize: 24,
              color: AppColors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
