import 'package:flutter/material.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/data_table.dart';
import '../../../../features/asign_bill/domain/user.dart';
import 'package:asuka/asuka.dart' as asuka;
import '../../../../features/asign_bill/presentations/screens/pbpm_dialog.dart';
import '../../../../core/widgets/nav.dart';
import '../../../../core/widgets/tab_title.dart';
import '../../../../features/asign_bill/presentations/widgets/filter.dart';
import '../../../../responsive.dart';


class PBPM extends StatelessWidget {

  final users = [
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
    User(id: '21323', name: 'Khiem Dang', isAllocated: 23, completedBillCount: 2,noCompletedBillCount: 4),
  ];
  final _header = {
  '#' : 25,
  'User' : 4,
  'Tổng phiếu phân bổ' :7,
  'Số phiếu đã nhập' : 7,
  'Số phiếu chưa nhập' : 7,
  '': 12,
  };

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 4,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabTitle(text: 'phân bổ phiếu mua'.toUpperCase()),
                  FilterPBPM(),
                  JDataTable(maxHeight: size.height * 0.6, headerData: _header, body:
                    ListView.separated(
                    itemCount: users.length,
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
                          Container( width: size.width /4, child: Text(users[index].name, style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(users[index].isAllocated.toString(), style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(users[index].completedBillCount.toString(), style: kBlackSmallText,)),
                          Container( width: size.width /7, child: Text(users[index].noCompletedBillCount.toString(), style: kBlackSmallText,)),
                          Container( width: size.width /12, child: Row(
                            children: [
                              TextButton(onPressed: (){
                                asuka.showDialog(
                                  barrierDismissible: false,
                                  builder: (context) {
                                    return ConstrainedBox(
                                      constraints: BoxConstraints(maxHeight: size.height*0.6),
                                      child: PBPMDialog()
                                    );
                                  },);
                              }, child: Image.asset('assets/images/allocated.png', height: 16, width: 16,),),
                              TextButton(onPressed: (){
                                // Modular.to.pushNamed('/bill-input/${users[index].id} ${Random().nextInt(8)}');
                              }, child: Image.asset('assets/images/asigned.png', height: 16, width: 16,),),
                        ],
                      ),
                    ),
                      ]
                    ),
                    )

                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
