import 'package:flutter/material.dart';
import '../../../../core/widgets/nav.dart';
import '../../../../core/widgets/tab_title.dart';
import '../../../../responsive.dart';
import '../widgets/filter.dart';
import '../widgets/data_table.dart';

class DSPM extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 2,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabTitle(text: 'danh sách phiếu mua'.toUpperCase()),
                  Filter(),
                  ListBillDataTable(resultCount: 27,),
                ],
              ),
            ),
          ),

      ],
    ),
    );
  }
}
