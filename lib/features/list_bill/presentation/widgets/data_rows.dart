import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../list_bill/presentation/widgets/status_bill.dart';
import '../../../../core/common/constants.dart';
import '../../../list_bill/domain/bill.dart';

class DataRows extends StatelessWidget {
  final List<Bill> bills ;

  const DataRows({Key? key, required this.bills}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height*0.55
      ),
      child: ListView.separated(
          separatorBuilder: (context, index) => Divider(color: kGreyColor,),
        itemBuilder:(context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: width /15,
                  child: Text('${index +1}')),
              Container( width: width /7.5, child: Text(bills[index].id, style: kBlackSmallText,)),
              Container( width: width /7.5, child: Text(bills[index].outletCode, style: kBlackSmallText,)),
              Container( width: width /7.5, child: Text(bills[index].totalPrice, style: kBlackSmallText,)),
              Container( width: width /7.5, child: Text(bills[index].user, style: kBlackSmallText,)),
              Container( width: width /7.5, child: Text(bills[index].createAt, style: kBlackSmallText,)),
              Container( width: width /7.5, child: StatusBill(status:bills[index].status)),
              Container( width: width /15, child: Center(child: TextButton(onPressed: (){
                Modular.to.pushNamed('/bill-input/${bills[index].id} ${Random().nextInt(8)}');
              }, child: Image.asset('assets/images/edit.png', height: 16, width: 16,),)))
            ],
          ),
        ),
        itemCount: bills.length,
        shrinkWrap: true,
          ),
    );
  }
}
