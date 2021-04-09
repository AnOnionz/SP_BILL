import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

import '../../features/asign_bill/presentations/screens/pbpm_dialog.dart';
import '../../core/common/constants.dart';

class DataRows extends StatelessWidget {
  final List objects;
  final List<Widget> children;
  final double maxHeight;

  const DataRows({Key? key, required this.objects, required this.children, required this.maxHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(
          maxHeight: maxHeight
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: kGreyColor,),
        itemBuilder:(context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            ],
          ),
        ),
        itemCount: objects.length,
        shrinkWrap: true,
      ),
    );
  }
}
