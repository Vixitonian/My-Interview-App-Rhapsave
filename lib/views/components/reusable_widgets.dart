// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:listedhosting/views/components/mycolors.dart';

NavText(String data,
    {double? size = 14,
    TextAlign align = TextAlign.start,
    Color color = primaryColor,
    TextOverflow overflow = TextOverflow.visible,
    int maxLine = 4}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(1.0, 0, 8.0, 0),
    child: Text(
      data,
      overflow: overflow,
      maxLines: maxLine,
      textAlign: align,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color,
      ),
    ),
  );
}

RegularText(String data,
    {double? size = 14,
    TextAlign align = TextAlign.start,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow overflow = TextOverflow.visible,
    int maxLine = 4}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(1.0, 0, 8.0, 0),
    child: Text(
      data,
      overflow: overflow,
      maxLines: maxLine,
      textAlign: align,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
      ),
    ),
  );
}

myPadding([double size = 5]) {
  return Padding(padding: EdgeInsets.all(size));
}
