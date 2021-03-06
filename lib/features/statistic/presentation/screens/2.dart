import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ten_gi_cung_duoc/core/widgets/date_time_field.dart';
import 'package:ten_gi_cung_duoc/core/widgets/dropdown_field.dart';
import 'package:ten_gi_cung_duoc/core/widgets/hover_button.dart';
import 'package:ten_gi_cung_duoc/core/widgets/single_filed.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/domain/bill.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/presentation/widgets/filter.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/presentation/widgets/status_bill.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../core/widgets/nav.dart';
import '../../../../core/widgets/tab_title.dart';
import '../../../../responsive.dart';


class TKUser extends StatelessWidget {
  final String id;

  final bills = [
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: IMAGE_FAIL),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: OWE_DATA),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: NO_INPUT),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: NO_INPUT),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: NO_INPUT),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: SUCCESS),
    Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: NO_INPUT),

  ];

  final _header = {
    '#' : 25,
    'ID phi????u' : 10,
    'Outlet Code': 10,
    'Outlet Name': 7,
    'T????ng ti????n' : 10,
    'User nh????p li????u': 10,
    'Th????i gian nh????p' : 10,
    'Ti??nh tra??ng' : 10,
    '': 25,
  };

  TKUser({Key? key,required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 5,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabTitle(text: 'ph??n b???? phi????u mua'.toUpperCase()),
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: FractionallySizedBox(
                widthFactor: 6/8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SingleField(label: 'ID phi????u', width: size.width/8,),
                    SingleField(label: 'Outlet code',width: size.width/8),
                    DropdownField(label: 'User nh????p li????u',width: size.width/8, data: ['1','2'],),
                    DateTimeField(label: 'Nga??y nh????p li????u',width: size.width/8),
                    DropdownField(label: 'Ti??nh tra??ng',width: size.width/8, data: ['1','2'],),
                    ElevatedButton(
                      onPressed: (){},
                      child:
                      Text('Ti??m', style: kBlackSmallText,),
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
            ),
                  JDataTable(
                    label: 'K????t qua??: ',
                    value: 27,
                    labelStyle: kRedText,
                    valueStyle: kRedText,
                    maxHeight: size.height * 0.6, headerData: _header, body:
                  ListView.separated(
                    separatorBuilder: (context, index) => Divider(color: kGreyColor,),
                    itemBuilder:(context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: size.width /25,
                              child: Text('${index +1}')),
                          Container( width: size.width /10, child: Text(bills[index].id, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(bills[index].outletCode, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(bills[index].outletCode, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(bills[index].totalPrice, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(bills[index].outletCode, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: Text(bills[index].createAt, style: kBlackSmallText,)),
                          Container( width: size.width /10, child: StatusBill(status:bills[index].status)),
                          Container( width: size.width/25, child: Center(child:
                          HoverButton(
                            onPressed: (){
                              Modular.to.pushNamed('/bill-edit/${bills[index].id} ${Random().nextInt(8)}');
                            },
                            icon: Image.asset('assets/images/edit.png', height: 16, width: 16,),
                            onActive: Image.asset('assets/images/edit_hover.png', height: 16, width: 16,),
                          ),
                          )
                          ),
                        ],
                      ),
                    ),
                    itemCount: bills.length,
                    shrinkWrap: true,
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
