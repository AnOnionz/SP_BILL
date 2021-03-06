import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ten_gi_cung_duoc/core/widgets/hover_button.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/domain/bill.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/presentation/widgets/filter.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/presentation/widgets/status_bill.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../core/widgets/nav.dart';
import '../../../../core/widgets/tab_title.dart';
import '../../../../responsive.dart';


class DSPM extends StatelessWidget {

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
    '#' : 15,
    'ID phi????u' : 7,
    'Outlet Code': 7,
    'T????ng ti????n' :7,
    'Th????i gian nh????p' : 7,
    'Ti??nh tra??ng' : 7,
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
          NavBar(userName:'Thong',index: 2,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabTitle(text: 'ph??n b???? phi????u mua'.toUpperCase()),
                  Filter(),
                  JDataTable(
                    label: 'T????ng s???? phi????u mua: ',
                    value: 27,
                    labelStyle: kBlackBigText,
                    valueStyle: kRedBigText,
                    maxHeight: size.height * 0.6, headerData: _header, body:
                  ListView.separated(
                    separatorBuilder: (context, index) => Divider(color: kGreyColor,),
                    itemBuilder:(context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: size.width /15,
                              child: Text('${index +1}')),
                          Container( width: size.width /7, child: Text(bills[index].id, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(bills[index].outletCode, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(bills[index].totalPrice, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(bills[index].createAt, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: StatusBill(status:bills[index].status)),
                          Container( width: size.width/15, child: Center(child:
                          HoverButton(
                            onPressed: (){
                              Modular.to.pushNamed('/bill-input/${bills[index].id} ${Random().nextInt(8)}');
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
