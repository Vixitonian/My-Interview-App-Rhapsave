// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:listedhosting/controllers/bottom_nav_controller.dart';
import 'package:listedhosting/views/components/mycolors.dart';
import 'package:listedhosting/views/components/reusable_widgets.dart';
import 'package:listedhosting/views/screens/home.dart';
import 'package:listedhosting/views/screens/profile.dart';
import 'package:listedhosting/views/screens/rhapsave.dart';
import 'package:listedhosting/views/screens/wallet.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int screenIndex = 0;
  List<Widget> pages = [
    const HomeScreenWidget(),
    const RhapsaveScreenWidget(),
    const WalletScreenWidget(),
    const ProfileScreenWidget()
  ];

  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: Container(
          child: ClipRRect(
            child: BottomNavigationBar(
                selectedFontSize: 15,
                selectedItemColor: primaryColor,
                selectedIconTheme: IconThemeData(size: 25),
                unselectedItemColor: grey1,
                backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.home),
                    label: "",
                    activeIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.home),
                        NavText('Home'),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wallet_outlined),
                      label: '',
                      activeIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.wallet_outlined),
                          NavText('Rhapsave'),
                        ],
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wallet_outlined),
                      label: '',
                      activeIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.wallet_outlined),
                          NavText('Wallet'),
                        ],
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: '',
                      activeIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.account_circle),
                          NavText('Profile'),
                        ],
                      ))
                ],
                onTap: (value) {
                  controller.changeIndex(value);
                },
                currentIndex: controller.index.value),
          ),
        ),
        body: pages[controller.index.value],
      ),
    );
  }
}
