import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ten_gi_cung_duoc/core/widgets/header.dart';
import '../../../../features/asign_bill/presentations/widgets/filter_list_dialog.dart';
import '../../../../features/list_bill/presentation/widgets/status_bill.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../core/widgets/single_filed.dart';

import '../../../../features/bill_input/domain/entiies/outlet.dart';

class PBPMListDialog extends StatelessWidget {
  final outlets = [

    Outlet(
        id: '131132323',
        outletName: 'Co.op Đế Thần Sơn',
        outletCode: '48353724',
        totalBill: 12,
        billCompletedCount: 7,
        billNoCompletedCount: 5,
      status: 1,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 2,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 0,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 0,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 0,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 1,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 2,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 1,
    ),
    Outlet(
      id: '131132323',
      outletName: 'Co.op Đế Thần Sơn',
      outletCode: '48353724',
      totalBill: 12,
      billCompletedCount: 7,
      billNoCompletedCount: 5,
      status: 3,
    ),
  ];

  final _header = {
    '': 25,
    'ID Phiếu': 10,
    'Outlet code': 10,
    'Outlet name': 7,
    'Tình trạng': 10,
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
        height: size.height * 0.9,
        width: size.width * 0.8,
        padding: const EdgeInsets.all(38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Text(
                  'Danh sách phiếu mua được phân bổ'.toUpperCase(),
                  style: kTabTitleText,
                ),
              ),
            ),
            FilterListDialog(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){

              },
              child:
              Text('Hủy phân bổ', style: kBlackSmallText,),
              style: ElevatedButton.styleFrom(
                  primary: kGreyColor, // background
                  onPrimary: kGreenColor,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16) // foreground
              ),
            ),
            SizedBox(height: size.height/60,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Header(headerData: _header),
                Container(
                    constraints: BoxConstraints(
                        maxHeight: size.height * 0.49),
                    child: ListView.separated(
                        itemCount: outlets.length,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => Divider(
                          color: kGreyColor,
                        ),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7.0),
                          child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: size.width / 25,
                                    child: Checkbox(
                                      onChanged: (value){
                                        print(value);
                                      },
                                      value: false,
                                      activeColor: kGreyColor,
                                      hoverColor: kGreyColor,
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    )),
                                Container(
                                    width: size.width / 10,
                                    child: Text(
                                      outlets[index].id,
                                      style: kBlackSmallText,
                                    )),
                                Container(
                                    width: size.width / 10,
                                    child: Text(
                                      outlets[index].outletCode,
                                      style: kBlackSmallText,
                                    )),
                                Container(
                                    width: size.width / 7,
                                    child: Text(
                                      outlets[index]
                                          .outletName,
                                      style: kBlackSmallText,
                                    )),
                                Container(
                                    width:size.width / 10 ,
                                    child: StatusBill(status:outlets[index].status!)),
                              ]),
                        ))),
              ],
            ),
            const SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: kGreyColor,
                        width: 1
                    ),
                  ),
                  child: Text('Đóng', style: kBlackSmallSmallText,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
