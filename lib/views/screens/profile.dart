// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:listedhosting/views/components/mycolors.dart';
import 'package:listedhosting/views/components/reusable_widgets.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Image.asset(
            "assets/images/feather.png",
            height: 16,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Image.asset(
              "assets/images/bell.png",
              height: 16,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Image.asset('assets/images/cover_image.jpg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 145, 24, 8),
                  child: Container(
                    //Profile Card
                    width: MediaQuery.of(context).size.width,
                    height: 118,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/user_image.png"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    NavText('Abiola Ogunjobi', size: 19),
                                    Image.asset(
                                      "assets/images/verified_svg.png",
                                      height: 16,
                                    ),
                                  ],
                                ),
                                RegularText(
                                  "Verified",
                                  color: grey3,
                                  size: 15,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/images/security-safe.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Security',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/card.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Cards',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/notification.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Notifications',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/card.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Live Support',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/card.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'About Us',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/card.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Contact Us',
                        ),
                        tileColor: Colors.white,
                      ),
                      myPadding(),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/card.png",
                          height: 20,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                        ),
                        title: RegularText(
                          'Terms & Privavcy Policy',
                        ),
                        tileColor: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
