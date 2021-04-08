import 'package:flutter/material.dart';
import 'package:ten_gi_cung_duoc/core/common/constants.dart';
import 'package:ten_gi_cung_duoc/features/list_bill/domain/bill.dart';

class FormInfo extends StatelessWidget {
  final Bill bill;

  const FormInfo({Key? key, required this.bill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 74.0),
      child: Row(
        children: [
          Image.asset('assets/images/play.png', height: 15.4,),
          const SizedBox(width: 19.0,),
          Text('Bill ID: ${bill.id}',style: kBlackSmallText,),
          const SizedBox(width: 42.0,),
          Text('Outlet Code: ${bill.outletCode}',style: kBlackSmallText,),
          Spacer(),
          Text('Tổng tiền: ', style: kBlackBigText,),
          const SizedBox(width: 18.0,),
          Text('${bill.totalPrice} VND', style: TextStyle(color: kRedColor, fontSize: 20),),
        ],

      ),
    );
  }
}
