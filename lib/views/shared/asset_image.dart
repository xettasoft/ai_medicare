import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AssetImageWidget({this.assetName = "", this.width = 0});
  final String assetName;
  final double width;
  @override
  Widget build(BuildContext context) => width == 0
      ? Image.asset('assets/images/$assetName')
      : Image.asset('assets/images/$assetName', width: width);
}
