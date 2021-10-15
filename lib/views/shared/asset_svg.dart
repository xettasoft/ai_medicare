import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetSvgWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AssetSvgWidget({this.assetName = "", this.width = 0, this.height=0,this.allowDrawingOutsideViewBox =false});
  final String assetName;
  final double width;
  final double height;
  final bool allowDrawingOutsideViewBox;
  @override
  Widget build(BuildContext context) =>
     
      SvgPicture.asset('assets/images/svg/$assetName',);
}
