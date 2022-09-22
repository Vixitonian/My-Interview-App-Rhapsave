// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:listedhosting/views/components/mycolors.dart';
import 'package:listedhosting/views/components/reusable_widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pie_chart/pie_chart.dart';

class RhapsaveScreenWidget extends StatefulWidget {
  const RhapsaveScreenWidget({Key? key}) : super(key: key);

  @override
  State<RhapsaveScreenWidget> createState() => _RhapsaveScreenWidgetState();
}

class _RhapsaveScreenWidgetState extends State<RhapsaveScreenWidget> {
  Map<String, double> dataMap = {
    "Car Savings": 1,
    "Mortgage Savings ": 3,
    "School fees": 5,
    "Christmas savings": 2,
  };

  final colorList = <Color>[
    Color(0xFFFFB531),
    Color(0xFFF5AF19),
    Color(0xFFFFB531),
    Color(0xFFFF4906),
    Color(0xFFF64F00)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showMaterialModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              builder: (context) => Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  height: 350,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RegularText("Awesome", size: 28),
                      myPadding(2),
                      RegularText(
                          'What percentage of your income would you like to save?',
                          fontWeight: FontWeight.bold,
                          size: 22),
                      myPadding(),
                      GroupButton(
                        isRadio: true,
                        onSelected: (index, isSelected, boolValue) =>
                            print('$index button is selected'),
                        buttons: const [
                          "10%",
                          "20%",
                          "30%",
                          "40%",
                          "50%",
                          "60%",
                          "70%",
                          "80%",
                          "90%",
                          "100%",
                        ],
                        options: GroupButtonOptions(
                            spacing: 10,
                            runSpacing: 10,
                            buttonHeight: 30,
                            selectedColor: secondaryColor,
                            unselectedColor: grey_transparent3,
                            buttonWidth: 58,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      myPadding(10),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                            border: OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: TextStyle(
                              color: hintTextColor,
                            ),
                            filled: true,
                            fillColor: grey_transparent3,
                            hintText: 'Enter Manually'),
                      ),
                      myPadding(),
                      ButtonTheme(
                        minWidth: double.infinity,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                          color: primaryColorDeep,
                          padding: EdgeInsets.all(14),
                          onPressed: () {},
                          child: RegularText('Create Rhapsave',
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: primaryColor,
          child: Icon(Icons.add),
        ),
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: RegularText(
            'Create Rhapsave',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          flexibleSpace: Image(
            image: AssetImage('assets/images/cover_image2.jpg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 40, 18, 8),
                child: Container(
                  //Profile Card
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RegularText('Rhapsave Savings',
                                    size: 12, fontWeight: FontWeight.w700),
                                RegularText('N 1,000,000',
                                    size: 30, fontWeight: FontWeight.bold),
                                RegularText(
                                    'Save automatically towards a several goals',
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),

                              chartRadius: 60,
                              colorList: colorList,
                              initialAngleInDegree: 0,
                              chartType: ChartType.ring,
                              ringStrokeWidth: 20,
                              chartLegendSpacing: 0,
                              legendOptions: LegendOptions(
                                showLegendsInRow: true,
                                legendPosition: LegendPosition.bottom,
                                showLegends: false,
                                legendShape: BoxShape.circle,
                                legendTextStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
                              ),
                              chartValuesOptions: ChartValuesOptions(
                                showChartValueBackground: false,
                                showChartValues: false,
                                showChartValuesInPercentage: false,
                                showChartValuesOutside: false,
                                decimalPlaces: 1,
                              ),
                              // gradientList: ---To add gradient colors---
                              // emptyColorGradient: ---Empty Color gradient---
                            ),
                          )
                        ],
                      ),
                      PieChart(
                        dataMap: dataMap,
                        animationDuration: Duration(milliseconds: 800),

                        chartRadius: 0,
                        colorList: colorList,
                        initialAngleInDegree: 0,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 20,
                        chartLegendSpacing: 0,
                        legendOptions: LegendOptions(
                          showLegendsInRow: true,
                          legendPosition: LegendPosition.bottom,
                          showLegends: true,
                          legendShape: BoxShape.circle,
                          legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: false,
                          showChartValues: false,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),
                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
