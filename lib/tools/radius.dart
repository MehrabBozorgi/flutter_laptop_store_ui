import 'package:flutter/material.dart';

getShapeWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(width * radius),
  );
}

getBorderRadiusWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.circular(width * radius);
}
