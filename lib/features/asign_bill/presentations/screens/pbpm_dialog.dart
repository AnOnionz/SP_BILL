import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../core/widgets/single_filed.dart';

import '../../../../features/bill_input/domain/entiies/outlet.dart';

class PBPMDialog extends StatelessWidget {

  final outlets = [
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
    Outlet(id: '131132323', outletName: 'Co.op Đế Thần Sơn', outletCode: '48353724', totalBill: 12, billCompletedCount: 7, billNoCompletedCount: 5),
  ];

  final _header = {
    '#' : 25,
    'Outlet name' : 7,
    'Outlet code' :10,
    'Số phiếu chưa phân bổ' : 10,
    '': 15,
  };

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Dialog(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        height: size.height*0.9,
        width: size.width*0.8,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 38),
                child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Text('phân bổ phiếu mua cho user'.toUpperCase(), style: kTabTitleText,),
                ),
            ),
              ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: JDataTable(maxHeight: size.height * 0.3, headerData: _header, body:
              ListView.separated(
                  itemCount: outlets.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(color: kGreyColor,),
                  itemBuilder:(context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: size.width /25,
                              child: Text('${index +1}')),
                          Container( width: size.width /7, child: Text(outlets[index].outletName, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(outlets[index].outletCode, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(outlets[index].billNoCompletedCount.toString(), style: kBlackSmallText,)),
                          Container( width: size.width /15, child: RadioListTile(
                            value: false,
                            groupValue: true,
                            onChanged: (value) {

                            },
                          )
                          ),
                        ]
                    ),
                  )

              )
              ),
            ),
            SingleField(label: 'Tên sản phẩm', width: 140, ),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('close')),
          ],
        ),
      ),
    );
  }
}
