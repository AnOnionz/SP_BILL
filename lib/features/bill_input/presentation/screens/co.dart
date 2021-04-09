import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../features/bill_input/presentation/widgets/filter.dart';
import '../../../../features/bill_input/domain/entiies/outlet.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../core/widgets/nav.dart';
import '../../../../core/widgets/tab_title.dart';
import '../../../../responsive.dart';


class CO extends StatelessWidget {

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
    '#' : 15,
    'Outlet name' : 6,
    'Outlet Code': 7.5,
    'Tổng số phiếu' :7.5,
    'Số phiếu đã nhập' : 7.5,
    'Số phiếu chưa nhập' : 7.5,
    '': 15,
  };

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 1,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabTitle(text: 'Chọn outlet để nhập phiếu mua'.toUpperCase()),
                  FilterCO(),
                  JDataTable(maxHeight: size.height * 0.6, headerData: _header, body:
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
                                  width: size.width /15,
                                  child: Text('${index +1}')),
                              Container( width: size.width /6, child: Text(outlets[index].outletName, style: kBlackSmallText,)),
                              Container( width: size.width /7.5, child: Text(outlets[index].outletCode, style: kBlackSmallText,)),
                              Container( width: size.width /7.5, child: Text(outlets[index].totalBill.toString(), style: kBlackSmallText,)),
                              Container( width: size.width /7.5, child: Text(outlets[index].billCompletedCount.toString(), style: kBlackSmallText,)),
                              Container( width: size.width /7.5, child: Text(outlets[index].billNoCompletedCount.toString(), style: kBlackSmallText,)),
                              Container( width: size.width /15, child: Center(child: TextButton(onPressed: (){
                                Modular.to.pushNamed('/bill-input/${outlets[index].id} ${Random().nextInt(8)}');
                              }, child: Image.asset('assets/images/edit.png', height: 16, width: 16,),))),
                                ],
                              ),
                              ),

                        ),
                      )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
