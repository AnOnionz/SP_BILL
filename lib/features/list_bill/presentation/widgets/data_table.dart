import 'package:flutter/material.dart';
import '../../../list_bill/domain/bill.dart';
import '../../../list_bill/presentation/widgets/pagination.dart';
import 'data_rows.dart';
import 'header_table.dart';
import '../../../../core/common/constants.dart';
class ListBillDataTable extends StatelessWidget {
  final int resultCount;

  const ListBillDataTable({Key? key, required this.resultCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {

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
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: Text('Kết quả: $resultCount', style: kRedText,),
        )),
        HeaderTable(),
        DataRows(bills: bills,),
      ],
    );
  }
}
