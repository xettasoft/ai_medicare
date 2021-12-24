import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:ai_medicare/views/appointment/appointments.dart';
import 'package:ai_medicare/views/dashboard/drawer_screen.dart';
import 'package:ai_medicare/views/dashboard/home.dart';
import 'package:ai_medicare/views/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Navigator extends StatelessWidget {
  Navigator({Key? key}) : super(key: key);

  final PersistentTabController _controller = PersistentTabController();

  List<Widget> _buildScreens(Function drawer) {
    return [
      Home(drawer: drawer),
      Search(drawer: drawer),
      MyAppointments(drawer: drawer)
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(double width) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.appPrimaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.white,
        ),
        title: ("Search"),
        activeColorPrimary: AppColors.Color5,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.envelope),
        title: ("Appointment"),
        activeColorPrimary: AppColors.appPrimaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  final GlobalKey navigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
        drawer: DrawerScreen(),
        key: navigationKey,
        body: Builder(
            builder: (context) => // Ensure Scaffold is in context
                PersistentTabView(
                  context,

                  controller: _controller,
                  screens:
                      _buildScreens(() => Scaffold.of(context).openDrawer()),
                  items: _navBarsItems(width),
                  confineInSafeArea: true,
                  backgroundColor:
                      ThemeController.to.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black87, // Default is Colors.white.
                  handleAndroidBackButtonPress: true, // Default is true.
                  resizeToAvoidBottomInset:
                      true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
                  stateManagement: true, // Default is true.
                  hideNavigationBarWhenKeyboardShows:
                      true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
                  decoration: NavBarDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      colorBehindNavBar:
                          ThemeController.to.themeMode == ThemeMode.light
                              ? Colors.white
                              : Colors.black54,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  popAllScreensOnTapOfSelectedTab: true,
                  popActionScreens: PopActionScreensType.all,
                  itemAnimationProperties: const ItemAnimationProperties(
                    // Navigation Bar's items animation properties.
                    duration: Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                  screenTransitionAnimation: const ScreenTransitionAnimation(
                    // Screen transition animation on change of selected tab.
                    animateTabTransition: true,
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 200),
                  ),
                  navBarStyle: NavBarStyle
                      .style15, // Choose the nav bar style with this property.
                )));
  }
}
