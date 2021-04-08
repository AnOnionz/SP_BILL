import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/widgets/nav.dart';

import '../../../../responsive.dart';

class PBO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 3,),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container(color: Colors.red, height: 800,),flex: 1,),
                Expanded(child: Container(color: Colors.lightBlue,height: 800,),flex: 2,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
