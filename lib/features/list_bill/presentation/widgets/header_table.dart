import 'package:flutter/material.dart';
import '../../../../core/common/constants.dart';

class HeaderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width /15,
                child: Text('#')),
            Container( width: width /7.5, child: Text('ID phiếu', style: kBlackSmallText,)),
            Container( width: width /7.5, child: Text('Outlet code', style: kBlackSmallText,)),
            Container( width: width /7.5, child: Text('Tổng tiền', style: kBlackSmallText,)),
            Container( width: width /7.5, child: Text('User nhập liệu', style: kBlackSmallText,)),
            Container( width: width /7.5, child: Text('Thời gian nhập', style: kBlackSmallText,)),
            Container( width: width /7.5, child: Text('Tình trạng', style: kBlackSmallText,)),
            Container( width: width /15,),
          ],
        ),
        Divider(color: kGreyColor,),
      ],
    );
  }
}
