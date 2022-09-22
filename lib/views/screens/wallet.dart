// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listedhosting/views/components/mycolors.dart';

class WalletScreenWidget extends StatefulWidget {
  const WalletScreenWidget({Key? key}) : super(key: key);

  @override
  State<WalletScreenWidget> createState() => _WalletScreenWidgetState();
}

class _WalletScreenWidgetState extends State<WalletScreenWidget> {
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
        body: SafeArea(
          child: Center(child: Text('Wallet')),
        ));
  }
}
