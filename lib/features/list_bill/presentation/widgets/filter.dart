import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'package:ten_gi_cung_duoc/core/widgets/dropdown_field.dart';
import '../../../../core/widgets/single_filed.dart';

import '../../../../core/widgets/date_time_field.dart';

class Filter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size =MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: FractionallySizedBox(
        widthFactor: 6/8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleField(label: 'ID phiếu', width: size.width/8,),
            SingleField(label: 'Outlet code',width: size.width/8),
            SingleField(label: 'Outlet Name',width: size.width/8,),
            DateTimeField(label: 'Ngày',width: size.width/8),
            DropdownField(label: 'Tình trạng',width: size.width/8, data: ['1','2'],),
            ElevatedButton(
              onPressed: (){},
              child:
                Text('Tìm', style: kBlackSmallText,),
                  style: ElevatedButton.styleFrom(
                     primary: kGreyColor, // background
                     onPrimary: kGreenColor,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16) // foreground
            ),
            ),
          ],
        ),
      ),
    );
  }
}
