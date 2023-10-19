/// Copyright © 2023, Oct. Developed by Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// APIGuide package

/// Import necessary packages
import 'package:flutter/material.dart';

/// Import [APIGuide] package files
import '../../../api_guide.dart';

/// Code starts here
AppBar apiGuideAppBar(
  BuildContext context,
  double version,
  DateTime latestUpdate,
  GlobalKey<ScaffoldState> scaffoldKey,
) =>
    AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            /// Display the API version
            '${Constants.apiGuideTxt}$version',
            style: TextStyle(color: Constants.whiteColor),
          ),
          Text(
            /// Display the latest update date
            '${Constants.latestUpdateTxt}${latestUpdate.year}-${latestUpdate.month}-${latestUpdate.day}',
            style: TextStyle(
              fontSize: Constants.size10,
              color: Constants.whiteColor,
            ),
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Constants.indigoColor,

      /// Leading icon (menu) for smaller screens
      leading: MediaQuery.of(context).size.width <= Constants.largeBreakPoint
          ? IconButton(
              icon: Icon(
                Constants.menuIcon,
                color: Constants.whiteColor,
              ),
              onPressed: () {
                /// Open the drawer when the leading icon is pressed
                scaffoldKey.currentState!.openDrawer();
              },
            )
          : SizedBox(),
    );

/// End of code
