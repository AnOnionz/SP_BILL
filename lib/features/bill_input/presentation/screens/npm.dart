import 'package:flutter/material.dart';
import '../../../../features/bill_input/presentation/widgets/bottom_button.dart';
import '../../../../features/bill_input/presentation/widgets/bill_input_form.dart';
import '../../../../features/list_bill/domain/bill.dart';
import '..//widgets/form_info.dart';
import '../../../../core/common/constants.dart';
import '../../../../core/widgets/nav.dart';

import '../../../../responsive.dart';


class NPM extends StatelessWidget {
  final String id;

  const NPM({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      tablet: Container(),
      desktop: Column(
        children: [
          NavBar(userName:'Thong',index: 1,),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: kImageBackgroundColor,
                    child: Center(
                    child: FlutterLogo()
                    ),
                  ),
                  flex: 1,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 38.0, right: 38.0, left: 38.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            child: Text('nhập phiếu mua'.toUpperCase(), style: kTabTitleText,),
                          ),
                        ),
                        FormInfo(bill: Bill(id: '312321', outletCode: '3203332321', totalPrice: '15.000.000', user: 'KhiemDang', createAt: '10/4/2021 8:30', status: NO_INPUT),),
                        BillInputForm(),
                        Spacer(),
                        BottomButton(),
                      ],
                    ),
                  ),
                  flex: 2,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

