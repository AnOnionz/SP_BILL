import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';

class TabTitle extends StatelessWidget {
  final String text;

  const TabTitle({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        child: Text(text, style: kTabTitleText,),
      ),
    );
  }
}
