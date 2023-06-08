import 'package:admin/AppComponet/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavbar(),
      desktop: DesktopNevbar(),
    );
  }

  Widget MobileNavbar() {
    return SizedBox.shrink();
  }

  Widget DesktopNevbar() {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 60, bottom: 60),
      height: 200,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ViewBox("15K", "Happy Customers"),
          ViewBox("255K", "Monthly Visitors"),
          ViewBox("15", "Countries  Worldwide"),
          ViewBox("100+", "Top Partners"),
        ],
      ),
    );
  }

  Widget ViewBox(String number, String discripiton) {
    return Container(
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
                fontSize: 35,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800),
          ),
          Text(
            discripiton,
            style: TextStyle(
              fontSize: 20,
              color: AppColors.black,
            ),
          )
        ],
      ),
    );
  }
}
