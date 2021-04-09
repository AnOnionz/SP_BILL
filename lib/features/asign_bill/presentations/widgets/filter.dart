import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'file:///D:/WorkSpace/Flutter/ten_gi_cung_duoc/ten_gi_cung_duoc/lib/core/widgets/single_filed.dart';

class FilterPBPM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: FractionallySizedBox(
        widthFactor: 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleField(label: 'User', width: size.width/8,),
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
